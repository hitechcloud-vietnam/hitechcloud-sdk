package hitechcloud

import "fmt"

// ContactsResource handles Contacts endpoints
type ContactsResource struct {
	client *HTTPClient
}

// List - List contacts
func (r *ContactsResource) List(params map[string]string )(map[string]interface{}, error) {
	return r.client.Get("/api/contact", params)
}

// Create - Create contact
func (r *ContactsResource) Create(data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post("/api/contact", data)
}

// GetPrivileges - Get contact privileges
func (r *ContactsResource) GetPrivileges()(map[string]interface{}, error) {
	return r.client.Get("/api/contact/privileges", nil)
}

// Get - Get contact
func (r *ContactsResource) Get(contactId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/contact/%d", contactId), nil)
}

// Update - Update contact
func (r *ContactsResource) Update(contactId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Put(fmt.Sprintf("/api/contact/%d", contactId), data)
}
