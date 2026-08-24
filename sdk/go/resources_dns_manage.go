package hitechcloud

import "fmt"

// DnsManageResource handles DNS management endpoints
type DnsManageResource struct {
	client *HTTPClient
}

func (r *DnsManageResource) GetRecords(domainID int) (map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/domain/%d/dns", domainID), nil)
}

func (r *DnsManageResource) CreateRecord(domainID int, data map[string]interface{}) (map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/domain/%d/dns", domainID), data)
}

func (r *DnsManageResource) UpdateRecord(domainID int, recordID int, data map[string]interface{}) (map[string]interface{}, error) {
	return r.client.Put(fmt.Sprintf("/api/domain/%d/dns/%d", domainID, recordID), data)
}

func (r *DnsManageResource) DeleteRecord(domainID int, recordID int) (map[string]interface{}, error) {
	return r.client.Delete(fmt.Sprintf("/api/domain/%d/dns/%d", domainID, recordID))
}

func (r *DnsManageResource) GetRecordTypes() (map[string]interface{}, error) {
	return r.client.Get("/api/dns/record/types", nil)
}

func (r *DnsManageResource) GetDnssecFlags() (map[string]interface{}, error) {
	return r.client.Get("/api/dnssec/flags", nil)
}

func (r *DnsManageResource) GetDnssecRecords(domainID int) (map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/domain/%d/dnssec", domainID), nil)
}

func (r *DnsManageResource) CreateDnssecRecord(domainID int, data map[string]interface{}) (map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/domain/%d/dnssec", domainID), data)
}

func (r *DnsManageResource) DeleteDnssecRecord(domainID int, recordID int) (map[string]interface{}, error) {
	return r.client.Delete(fmt.Sprintf("/api/domain/%d/dnssec/%d", domainID, recordID))
}

func (r *DnsManageResource) RegisterNameserver(domainID int, hostname string, ips []string) (map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/domain/%d/registerns", domainID), map[string]interface{}{
		"hostname": hostname,
		"ips":      ips,
	})
}
