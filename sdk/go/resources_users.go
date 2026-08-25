package hitechcloud

// UsersResource handles Users endpoints
type UsersResource struct {
	client *HTTPClient
}

// GetDetails - Get user details
func (r *UsersResource) GetDetails()(map[string]interface{}, error) {
	return r.client.Get("/api/details", nil)
}

// UpdateDetails - Update user details
func (r *UsersResource) UpdateDetails(data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Put("/api/details", data)
}

// GetLogs - Get user logs
func (r *UsersResource) GetLogs(params map[string]string )(map[string]interface{}, error) {
	return r.client.Get("/api/logs", params)
}
