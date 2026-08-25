package hitechcloud

import "fmt"

// IpamResource handles Ipam endpoints
type IpamResource struct {
	client *HTTPClient
}

// ListIps - List IPs
func (r *IpamResource) ListIps(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/htcipam/ips", serviceId), nil)
}

// ListSubnets - List subnets
func (r *IpamResource) ListSubnets(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/htcipam/subnets", serviceId), nil)
}

// ListRdns - List rDNS
func (r *IpamResource) ListRdns(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/htcipam/rdns", serviceId), nil)
}

// SetRdns - Set rDNS
func (r *IpamResource) SetRdns(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/htcipam/rdns", serviceId), data)
}
