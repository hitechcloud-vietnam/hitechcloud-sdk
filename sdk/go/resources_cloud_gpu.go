package hitechcloud

import "fmt"

// CloudGpuResource handles Cloud GPU endpoints
type CloudGpuResource struct {
	client *HTTPClient
}

func (r *CloudGpuResource) List(params map[string]string) (map[string]interface{}, error) {
	return r.client.Get("/api/cloudgpu", params)
}

func (r *CloudGpuResource) Get(gpuID int) (map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/cloudgpu/%d", gpuID), nil)
}

func (r *CloudGpuResource) Start(gpuID int) (map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/cloudgpu/%d/start", gpuID), nil)
}

func (r *CloudGpuResource) Stop(gpuID int) (map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/cloudgpu/%d/stop", gpuID), nil)
}

func (r *CloudGpuResource) Restart(gpuID int) (map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/cloudgpu/%d/restart", gpuID), nil)
}

func (r *CloudGpuResource) GetConsole(gpuID int) (map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/cloudgpu/%d/console", gpuID), nil)
}
