package hitechcloud

import "fmt"

// VirtualizorResource handles Virtualizor VPS endpoints
type VirtualizorResource struct {
	client *HTTPClient
}

func (r *VirtualizorResource) List(params map[string]string) (map[string]interface{}, error) {
	return r.client.Get("/api/virtualizor", params)
}

func (r *VirtualizorResource) Get(vpsID int) (map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/virtualizor/%d", vpsID), nil)
}

func (r *VirtualizorResource) Start(vpsID int) (map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/virtualizor/%d/start", vpsID), nil)
}

func (r *VirtualizorResource) Stop(vpsID int) (map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/virtualizor/%d/stop", vpsID), nil)
}
