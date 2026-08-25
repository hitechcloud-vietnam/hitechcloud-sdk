package hitechcloud

import "fmt"

// VNeIdeKycResource handles VNeIdeKyc endpoints
type VNeIdeKycResource struct {
	client *HTTPClient
}

// StartPersonalEkyc - Start personal eKYC
func (r *VNeIdeKycResource) StartPersonalEkyc(params map[string]string )(map[string]interface{}, error) {
	return r.client.Get("/api/vneidekyc/ekyc/session", params)
}

// GetEkycSession - Get eKYC session
func (r *VNeIdeKycResource) GetEkycSession(sessionHash string )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/vneidekyc/ekyc/session/%s", sessionHash), nil)
}

// ListClientSessions - List client sessions
func (r *VNeIdeKycResource) ListClientSessions(clientId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/vneidekyc/ekyc/list/%d", clientId), nil)
}

// UploadFile - Upload file
func (r *VNeIdeKycResource) UploadFile(sessionHash string, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/vneidekyc/ekyc/%s/upload", sessionHash), data)
}

// SubmitEkyc - Submit eKYC
func (r *VNeIdeKycResource) SubmitEkyc(sessionHash string, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/vneidekyc/ekyc/%s/submit", sessionHash), data)
}

// CancelSession - Cancel session
func (r *VNeIdeKycResource) CancelSession(sessionHash string )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/vneidekyc/ekyc/%s/cancel", sessionHash), nil)
}

// AcceptEkyc - Accept eKYC
func (r *VNeIdeKycResource) AcceptEkyc(sessionHash string )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/vneidekyc/ekyc/%s/accept", sessionHash), nil)
}

// RejectEkyc - Reject eKYC
func (r *VNeIdeKycResource) RejectEkyc(sessionHash string, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/vneidekyc/ekyc/%s/reject", sessionHash), data)
}

// LookupOrganization - Lookup organization
func (r *VNeIdeKycResource) LookupOrganization(data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post("/api/vneidekyc/org/lookup", data)
}

// StartOrgVerification - Start org verification
func (r *VNeIdeKycResource) StartOrgVerification(data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post("/api/vneidekyc/org/start", data)
}

// GetOrganization - Get organization
func (r *VNeIdeKycResource) GetOrganization(orgHash string )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/vneidekyc/org/%s", orgHash), nil)
}

// AcceptOrganization - Accept organization
func (r *VNeIdeKycResource) AcceptOrganization(orgHash string )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/vneidekyc/org/%s/accept", orgHash), nil)
}

// RejectOrganization - Reject organization
func (r *VNeIdeKycResource) RejectOrganization(orgHash string, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/vneidekyc/org/%s/reject", orgHash), data)
}

// UploadSignedPdf - Upload signed PDF
func (r *VNeIdeKycResource) UploadSignedPdf(data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post("/api/vneidekyc/pdf/upload", data)
}

// GetSignedPdf - Get signed PDF
func (r *VNeIdeKycResource) GetSignedPdf(pdfHash string )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/vneidekyc/pdf/%s", pdfHash), nil)
}

// GetClientStatus - Get client status
func (r *VNeIdeKycResource) GetClientStatus(clientId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/vneidekyc/client/%d/status", clientId), nil)
}
