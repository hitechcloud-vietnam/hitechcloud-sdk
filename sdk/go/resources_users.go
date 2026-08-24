package hitechcloud

// UsersResource handles user profile endpoints
type UsersResource struct {
	client *HTTPClient
}

func (r *UsersResource) GetDetails() (map[string]interface{}, error) {
	return r.client.Get("/api/user", nil)
}

func (r *UsersResource) UpdateDetails(data map[string]interface{}) (map[string]interface{}, error) {
	return r.client.Put("/api/user", data)
}

func (r *UsersResource) GetLogs() (map[string]interface{}, error) {
	return r.client.Get("/api/user/logs", nil)
}
