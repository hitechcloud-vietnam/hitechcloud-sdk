package hitechcloud

// NotificationsResource handles notification endpoints
type NotificationsResource struct {
	client *HTTPClient
}

func (r *NotificationsResource) List(params map[string]string) (map[string]interface{}, error) {
	return r.client.Get("/api/notifications", params)
}

func (r *NotificationsResource) GetPreferences() (map[string]interface{}, error) {
	return r.client.Get("/api/notifications/preferences", nil)
}

func (r *NotificationsResource) UpdatePreferences(data map[string]interface{}) (map[string]interface{}, error) {
	return r.client.Put("/api/notifications/preferences", data)
}
