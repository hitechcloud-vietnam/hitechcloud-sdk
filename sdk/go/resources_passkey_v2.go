package hitechcloud

import "fmt"

// PasskeyV2Resource handles PasskeyV2 endpoints
type PasskeyV2Resource struct {
	client *HTTPClient
}

// GetMfaStatus - Get MFA status
func (r *PasskeyV2Resource) GetMfaStatus(userType string, userId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/passkeyv2/status/%s/%d", userType, userId), nil)
}

// ListCredentials - List credentials
func (r *PasskeyV2Resource) ListCredentials(userType string, userId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/passkeyv2/credentials/%s/%d", userType, userId), nil)
}

// DeleteCredential - Delete credential
func (r *PasskeyV2Resource) DeleteCredential(userType string, userId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/passkeyv2/credentials/%s/%d/delete", userType, userId), data)
}

// SendEmailOtp - Send email OTP
func (r *PasskeyV2Resource) SendEmailOtp(data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post("/api/passkeyv2/email_otp/send", data)
}

// VerifyEmailOtp - Verify email OTP
func (r *PasskeyV2Resource) VerifyEmailOtp(data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post("/api/passkeyv2/email_otp/verify", data)
}

// DisableMfa - Disable MFA
func (r *PasskeyV2Resource) DisableMfa(userType string, userId int )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/passkeyv2/disable/%s/%d", userType, userId), nil)
}
