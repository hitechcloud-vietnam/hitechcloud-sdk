package hitechcloud

import "fmt"

// DnsResource handles DNS zone endpoints
type DnsResource struct {
	client *HTTPClient
}

func (r *DnsResource) List(params map[string]string) (map[string]interface{}, error) {
	return r.client.Get("/api/dns", params)
}

func (r *DnsResource) ListForService(serviceID int) (map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/dns/service/%d", serviceID), nil)
}

func (r *DnsResource) AddZone(data map[string]interface{}) (map[string]interface{}, error) {
	return r.client.Post("/api/dns", data)
}

func (r *DnsResource) GetZone(zoneID int) (map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/dns/%d", zoneID), nil)
}

func (r *DnsResource) DeleteZone(zoneID int) (map[string]interface{}, error) {
	return r.client.Delete(fmt.Sprintf("/api/dns/%d", zoneID))
}

func (r *DnsResource) AddRecord(zoneID int, data map[string]interface{}) (map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/dns/%d/records", zoneID), data)
}

func (r *DnsResource) EditRecord(zoneID int, recordID int, data map[string]interface{}) (map[string]interface{}, error) {
	return r.client.Put(fmt.Sprintf("/api/dns/%d/records/%d", zoneID, recordID), data)
}

func (r *DnsResource) DeleteRecord(zoneID int, recordID int) (map[string]interface{}, error) {
	return r.client.Delete(fmt.Sprintf("/api/dns/%d/records/%d", zoneID, recordID))
}
