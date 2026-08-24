package hitechcloud

import "fmt"

// SslResource handles SSL certificate endpoints
type SslResource struct {
	client *HTTPClient
}

func (r *SslResource) List(params map[string]string) (map[string]interface{}, error) {
	return r.client.Get("/api/ssl", params)
}

func (r *SslResource) Get(sslID int) (map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/ssl/%d", sslID), nil)
}

func (r *SslResource) Download(sslID int) (map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/ssl/%d/download", sslID), nil)
}

func (r *SslResource) ListAvailable(params map[string]string) (map[string]interface{}, error) {
	return r.client.Get("/api/ssl/available", params)
}

func (r *SslResource) Order(data map[string]interface{}) (map[string]interface{}, error) {
	return r.client.Post("/api/ssl/order", data)
}

func (r *SslResource) ListServerSoftware() (map[string]interface{}, error) {
	return r.client.Get("/api/ssl/serversoftware", nil)
}
