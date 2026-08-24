package hitechcloud

import "fmt"

// HiTechCloudError is the base error type
type HiTechCloudError struct {
	StatusCode int
	Message    string
	Data       map[string]interface{}
}

func (e *HiTechCloudError) Error() string {
	return fmt.Sprintf("HiTechCloud API error %d: %s", e.StatusCode, e.Message)
}

// AuthenticationError represents 401 errors
type AuthenticationError struct {
	HiTechCloudError
}

// AuthorizationError represents 403 errors
type AuthorizationError struct {
	HiTechCloudError
}

// NotFoundError represents 404 errors
type NotFoundError struct {
	HiTechCloudError
}

// RateLimitError represents 429 errors
type RateLimitError struct {
	HiTechCloudError
	RetryAfter int
}

// ValidationError represents 422 errors
type ValidationError struct {
	HiTechCloudError
}

// ServerError represents 5xx errors
type ServerError struct {
	HiTechCloudError
}

func mapError(statusCode int, data map[string]interface{}) error {
	message := "API error"
	if msg, ok := data["error"].(string); ok {
		message = msg
	} else if msg, ok := data["message"].(string); ok {
		message = msg
	}

	base := HiTechCloudError{
		StatusCode: statusCode,
		Message:    message,
		Data:       data,
	}

	switch statusCode {
	case 401:
		return &AuthenticationError{base}
	case 403:
		return &AuthorizationError{base}
	case 404:
		return &NotFoundError{base}
	case 422:
		return &ValidationError{base}
	case 429:
		retryAfter := 60
		return &RateLimitError{HiTechCloudError: base, RetryAfter: retryAfter}
	default:
		if statusCode >= 500 {
			return &ServerError{base}
		}
		return &base
	}
}
