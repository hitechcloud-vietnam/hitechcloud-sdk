package hitechcloud

import (
	"bytes"
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	"strconv"
	"time"
)

// HTTPClient handles HTTP requests with retry logic
type HTTPClient struct {
	baseURL    string
	httpClient *http.Client
	token      string
	maxRetries int
}

func newHTTPClient(baseURL string, timeout time.Duration, maxRetries int) *HTTPClient {
	return &HTTPClient{
		baseURL: baseURL,
		httpClient: &http.Client{
			Timeout: timeout,
		},
		maxRetries: maxRetries,
	}
}

func (c *HTTPClient) SetToken(token string) {
	c.token = token
}

func (c *HTTPClient) ClearToken() {
	c.token = ""
}

func (c *HTTPClient) Request(method, path string, body interface{}, params map[string]string) (map[string]interface{}, error) {
	var lastErr error

	for attempt := 0; attempt <= c.maxRetries; attempt++ {
		var bodyReader io.Reader

		if body != nil {
			jsonBody, err := json.Marshal(body)
			if err != nil {
				return nil, fmt.Errorf("marshal body: %w", err)
			}
			bodyReader = bytes.NewReader(jsonBody)
		}

		url := c.baseURL + path
		if len(params) > 0 {
			first := true
			for k, v := range params {
				if first {
					url += "?" + k + "=" + v
					first = false
				} else {
					url += "&" + k + "=" + v
				}
			}
		}

		req, err := http.NewRequest(method, url, bodyReader)
		if err != nil {
			return nil, fmt.Errorf("create request: %w", err)
		}

		req.Header.Set("Content-Type", "application/json")
		req.Header.Set("User-Agent", "HiTechCloud-SDK-Go/"+Version)
		if c.token != "" {
			req.Header.Set("Authorization", "Bearer "+c.token)
		}

		resp, err := c.httpClient.Do(req)
		if err != nil {
			lastErr = err
			if attempt < c.maxRetries {
				time.Sleep(time.Duration(1<<uint(attempt)) * time.Second)
				continue
			}
			return nil, fmt.Errorf("request failed: %w", err)
		}

		defer resp.Body.Close()
		respBody, _ := io.ReadAll(resp.Body)

		if resp.StatusCode == 429 && attempt < c.maxRetries {
			retryAfter := resp.Header.Get("Retry-After")
			seconds, _ := strconv.Atoi(retryAfter)
			if seconds == 0 {
				seconds = 60
			}
			time.Sleep(time.Duration(seconds) * time.Second)
			continue
		}

		if resp.StatusCode >= 500 && attempt < c.maxRetries {
			time.Sleep(time.Duration(1<<uint(attempt)) * time.Second)
			continue
		}

		var result map[string]interface{}
		if err := json.Unmarshal(respBody, &result); err != nil {
			return nil, fmt.Errorf("unmarshal response: %w", err)
		}

		if resp.StatusCode >= 400 {
			return nil, mapError(resp.StatusCode, result)
		}

		return result, nil
	}

	return nil, lastErr
}

func (c *HTTPClient) Get(path string, params map[string]string) (map[string]interface{}, error) {
	return c.Request("GET", path, nil, params)
}

func (c *HTTPClient) Post(path string, body interface{}) (map[string]interface{}, error) {
	return c.Request("POST", path, body, nil)
}

func (c *HTTPClient) Put(path string, body interface{}) (map[string]interface{}, error) {
	return c.Request("PUT", path, body, nil)
}

func (c *HTTPClient) Delete(path string) (map[string]interface{}, error) {
	return c.Request("DELETE", path, nil, nil)
}
