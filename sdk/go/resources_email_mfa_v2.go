package hitechcloud

import "fmt"

// EmailMfaV2Resource handles EmailMfaV2 endpoints
type EmailMfaV2Resource struct {
	client *HTTPClient
}

// GetMfaStatus - Get MFA status
func (r *EmailMfaV2Resource) GetMfaStatus(userType string, userId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/email_mfa_v2/status/%s/%d", userType, userId), nil)
}

// SendCode - Send code
func (r *EmailMfaV2Resource) SendCode(data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post("/api/email_mfa_v2/send", data)
}

// VerifyCode - Verify code
func (r *EmailMfaV2Resource) VerifyCode(data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post("/api/email_mfa_v2/verify", data)
}

// ListActiveCodes - List active codes
func (r *EmailMfaV2Resource) ListActiveCodes(userType string, userId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/email_mfa_v2/list/%s/%d", userType, userId), nil)
}

// RevokeAllCodes - Revoke all codes
func (r *EmailMfaV2Resource) RevokeAllCodes(data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post("/api/email_mfa_v2/revokeall", data)
}

// DisableMfa - Disable MFA
func (r *EmailMfaV2Resource) DisableMfa()(map[string]interface{}, error) {
	return r.client.Post("/api/email_mfa_v2/disable", nil)
}
