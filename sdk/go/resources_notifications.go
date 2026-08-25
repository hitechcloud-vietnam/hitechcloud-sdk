package hitechcloud

import "fmt"

// NotificationsResource handles Notifications endpoints
type NotificationsResource struct {
	client *HTTPClient
}

// List - List notifications
func (r *NotificationsResource) List(params map[string]string )(map[string]interface{}, error) {
	return r.client.Get("/api/notifications", params)
}

// GetNew - Get new notifications
func (r *NotificationsResource) GetNew()(map[string]interface{}, error) {
	return r.client.Get("/api/notifications/new", nil)
}

// Acknowledge - Acknowledge notification
func (r *NotificationsResource) Acknowledge(notificationId int )(map[string]interface{}, error) {
	return r.client.Put(fmt.Sprintf("/api/notifications/%d/ack", notificationId), nil)
}
