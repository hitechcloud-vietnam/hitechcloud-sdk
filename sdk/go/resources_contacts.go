package hitechcloud

import "fmt"

// ContactsResource handles contact endpoints
type ContactsResource struct {
	client *HTTPClient
}

func (r *ContactsResource) List(params map[string]string) (map[string]interface{}, error) {
	return r.client.Get("/api/contact", params)
}

func (r *ContactsResource) Get(contactID int) (map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/contact/%d", contactID), nil)
}

func (r *ContactsResource) Create(data map[string]interface{}) (map[string]interface{}, error) {
	return r.client.Post("/api/contact", data)
}

func (r *ContactsResource) Update(contactID int, data map[string]interface{}) (map[string]interface{}, error) {
	return r.client.Put(fmt.Sprintf("/api/contact/%d", contactID), data)
}

func (r *ContactsResource) Delete(contactID int) (map[string]interface{}, error) {
	return r.client.Delete(fmt.Sprintf("/api/contact/%d", contactID))
}
