package hitechcloud

import "fmt"

// ServicesResource handles service endpoints
type ServicesResource struct {
	client *HTTPClient
}

func (r *ServicesResource) List(params map[string]string) (map[string]interface{}, error) {
	return r.client.Get("/api/service", params)
}

func (r *ServicesResource) Get(serviceID int) (map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d", serviceID), nil)
}

func (r *ServicesResource) ListMethods() (map[string]interface{}, error) {
	return r.client.Get("/api/service/methods", nil)
}

func (r *ServicesResource) Cancel(serviceID int, reason string) (map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/cancel", serviceID), map[string]string{"reason": reason})
}

func (r *ServicesResource) GetLabel(serviceID int) (map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/label", serviceID), nil)
}

func (r *ServicesResource) SetLabel(serviceID int, label string) (map[string]interface{}, error) {
	return r.client.Put(fmt.Sprintf("/api/service/%d/label", serviceID), map[string]string{"label": label})
}

func (r *ServicesResource) Renew(serviceID int) (map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/renew", serviceID), nil)
}

func (r *ServicesResource) ListBillingCycles(serviceID int) (map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/billing_cycles", serviceID), nil)
}

func (r *ServicesResource) ChangeBillingCycle(serviceID int, billingCycle string) (map[string]interface{}, error) {
	return r.client.Put(fmt.Sprintf("/api/service/%d/billing_cycles", serviceID), map[string]string{"billing_cycle": billingCycle})
}
