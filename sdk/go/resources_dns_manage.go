package hitechcloud

import "fmt"

// DnsManageResource handles DnsManage endpoints
type DnsManageResource struct {
	client *HTTPClient
}

// RegisterNameservers - Register nameservers
func (r *DnsManageResource) RegisterNameservers(domainId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/domain/%d/reg", domainId), data)
}

// GetRecords - Get DNS records
func (r *DnsManageResource) GetRecords(domainId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/domain/%d/dns", domainId), nil)
}

// CreateRecord - Create DNS record
func (r *DnsManageResource) CreateRecord(domainId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/domain/%d/dns", domainId), data)
}

// UpdateRecord - Update DNS record
func (r *DnsManageResource) UpdateRecord(domainId int, index int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Put(fmt.Sprintf("/api/domain/%d/dns/%d", domainId, index), data)
}

// DeleteRecord - Delete DNS record
func (r *DnsManageResource) DeleteRecord(domainId int, index int )(map[string]interface{}, error) {
	return r.client.Delete(fmt.Sprintf("/api/domain/%d/dns/%d", domainId, index))
}

// GetRecordTypes - Get record types
func (r *DnsManageResource) GetRecordTypes(domainId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/domain/%d/dns/types", domainId), nil)
}

// GetDnssecFlags - Get DNSSEC flags
func (r *DnsManageResource) GetDnssecFlags(domainId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/domain/%d/dnssec/flags", domainId), nil)
}

// GetDnssec - Get DNSSEC records
func (r *DnsManageResource) GetDnssec(domainId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/domain/%d/dnssec", domainId), nil)
}

// CreateDnssec - Create DNSSEC record
func (r *DnsManageResource) CreateDnssec(domainId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/domain/%d/dnssec", domainId), data)
}

// DeleteDnssec - Delete DNSSEC record
func (r *DnsManageResource) DeleteDnssec(domainId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Delete(fmt.Sprintf("/api/domain/%d/dnssec", domainId))
}
