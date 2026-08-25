package hitechcloud

import "fmt"

// SslResource handles Ssl endpoints
type SslResource struct {
	client *HTTPClient
}

// List - List certificates
func (r *SslResource) List(params map[string]string )(map[string]interface{}, error) {
	return r.client.Get("/api/certificate", params)
}

// Get - Get certificate
func (r *SslResource) Get(certId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/certificate/%d", certId), nil)
}

// GetCrt - Get certificate CRT
func (r *SslResource) GetCrt(certId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/certificate/%d/crt", certId), nil)
}

// ListOrders - List SSL orders
func (r *SslResource) ListOrders(params map[string]string )(map[string]interface{}, error) {
	return r.client.Get("/api/certificate/order", params)
}

// CreateOrder - Create SSL order
func (r *SslResource) CreateOrder(data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post("/api/certificate/order", data)
}

// GetOrderSoftware - Get order software
func (r *SslResource) GetOrderSoftware(productId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/certificate/order/%d/software", productId), nil)
}
