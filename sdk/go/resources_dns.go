package hitechcloud

import "fmt"

// DnsResource handles Dns endpoints
type DnsResource struct {
	client *HTTPClient
}

// ListZones - List DNS zones
func (r *DnsResource) ListZones(params map[string]string )(map[string]interface{}, error) {
	return r.client.Get("/api/dns", params)
}

// CreateZone - Create DNS zone
func (r *DnsResource) CreateZone(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/dns", serviceId), data)
}

// GetZones - Get service DNS zones
func (r *DnsResource) GetZones(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/dns", serviceId), nil)
}

// GetZone - Get DNS zone
func (r *DnsResource) GetZone(serviceId int, zoneId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/dns/%d", serviceId, zoneId), nil)
}

// DeleteZone - Delete DNS zone
func (r *DnsResource) DeleteZone(serviceId int, zoneId int )(map[string]interface{}, error) {
	return r.client.Delete(fmt.Sprintf("/api/service/%d/dns/%d", serviceId, zoneId))
}

// CreateRecord - Create record
func (r *DnsResource) CreateRecord(serviceId int, zoneId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/dns/%d/records", serviceId, zoneId), data)
}

// UpdateRecord - Update record
func (r *DnsResource) UpdateRecord(serviceId int, zoneId int, recordId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Put(fmt.Sprintf("/api/service/%d/dns/%d/records/%d", serviceId, zoneId, recordId), data)
}

// DeleteRecord - Delete record
func (r *DnsResource) DeleteRecord(serviceId int, zoneId int, recordId int )(map[string]interface{}, error) {
	return r.client.Delete(fmt.Sprintf("/api/service/%d/dns/%d/records/%d", serviceId, zoneId, recordId))
}
