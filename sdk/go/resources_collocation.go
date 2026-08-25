package hitechcloud

import "fmt"

// CollocationResource handles Collocation endpoints
type CollocationResource struct {
	client *HTTPClient
}

// ListPdu - List PDU ports
func (r *CollocationResource) ListPdu(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/pdu", serviceId), nil)
}

// GetPduPort - Get PDU port
func (r *CollocationResource) GetPduPort(serviceId int, port int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/pdu/%d", serviceId, port), nil)
}

// SetPduPort - Set PDU port state
func (r *CollocationResource) SetPduPort(serviceId int, port int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/pdu/%d", serviceId, port), data)
}
