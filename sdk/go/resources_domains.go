package hitechcloud

import "fmt"

// DomainsResource handles domain endpoints
type DomainsResource struct {
	client *HTTPClient
}

func (r *DomainsResource) List(params map[string]string) (map[string]interface{}, error) {
	return r.client.Get("/api/domain", params)
}

func (r *DomainsResource) Get(domainID int) (map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/domain/%d", domainID), nil)
}

func (r *DomainsResource) GetByName(name string) (map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/domain/name/%s", name), nil)
}

func (r *DomainsResource) Whois(domain string) (map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/whois/%s", domain), nil)
}

func (r *DomainsResource) WhoisLookup(domain string) (map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/whoislookup/%s", domain), nil)
}

func (r *DomainsResource) CheckAvailability(domain string) (map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/domain/availability/%s", domain), nil)
}

func (r *DomainsResource) GetNameservers(domainID int) (map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/domain/%d/ns", domainID), nil)
}

func (r *DomainsResource) UpdateNameservers(domainID int, ns map[string]string) (map[string]interface{}, error) {
	return r.client.Put(fmt.Sprintf("/api/domain/%d/ns", domainID), ns)
}

func (r *DomainsResource) GetEppCode(domainID int) (map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/domain/%d/epp", domainID), nil)
}

func (r *DomainsResource) Sync(domainID int) (map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/domain/%d/sync", domainID), nil)
}

func (r *DomainsResource) GetLock(domainID int) (map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/domain/%d/reglock", domainID), nil)
}

func (r *DomainsResource) UpdateLock(domainID int, reglock bool) (map[string]interface{}, error) {
	return r.client.Put(fmt.Sprintf("/api/domain/%d/reglock", domainID), map[string]bool{"reglock": reglock})
}

func (r *DomainsResource) UpdateIDProtection(domainID int, idprotection bool) (map[string]interface{}, error) {
	return r.client.Put(fmt.Sprintf("/api/domain/%d/idprotection", domainID), map[string]bool{"idprotection": idprotection})
}

func (r *DomainsResource) GetContact(domainID int) (map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/domain/%d/contact", domainID), nil)
}

func (r *DomainsResource) UpdateContact(domainID int, data map[string]interface{}) (map[string]interface{}, error) {
	return r.client.Put(fmt.Sprintf("/api/domain/%d/contact", domainID), data)
}

func (r *DomainsResource) GetEmailForwarding(domainID int) (map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/domain/%d/email/forwarding", domainID), nil)
}

func (r *DomainsResource) UpdateEmailForwarding(domainID int, entries []interface{}) (map[string]interface{}, error) {
	return r.client.Put(fmt.Sprintf("/api/domain/%d/email/forwarding", domainID), map[string]interface{}{"entries": entries})
}

func (r *DomainsResource) GetAvailableTlds() (map[string]interface{}, error) {
	return r.client.Get("/api/domain/order", nil)
}

func (r *DomainsResource) Order(domain string, years int, data map[string]interface{}) (map[string]interface{}, error) {
	payload := map[string]interface{}{"domain": domain, "years": years}
	for k, v := range data {
		payload[k] = v
	}
	return r.client.Post("/api/domain/order", payload)
}

func (r *DomainsResource) Renew(domainID int, years int) (map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/domain/%d/renew", domainID), map[string]int{"years": years})
}

func (r *DomainsResource) GetTldForm(tldID int) (map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/domain/order/%d/form", tldID), nil)
}

func (r *DomainsResource) GetDocuments(domainID int) (map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/domain/%d/documents", domainID), nil)
}
