package hitechcloud

// AuthResource handles Auth endpoints
type AuthResource struct {
	client *HTTPClient
}

// Login - Login
func (r *AuthResource) Login(email string, password string) (map[string]interface{}, error) {
	return r.client.Post("/api/login", map[string]string{
		"email":    email,
		"password": password,
	})
}

// Logout - Logout
func (r *AuthResource) Logout() (map[string]interface{}, error) {
	return r.client.Post("/api/logout", nil)
}

// RefreshToken - Refresh token
func (r *AuthResource) RefreshToken() (map[string]interface{}, error) {
	return r.client.Post("/api/token", nil)
}

// RevokeToken - Revoke token
func (r *AuthResource) RevokeToken() (map[string]interface{}, error) {
	return r.client.Post("/api/revoke", nil)
}

// PasswordReset - Password reset
func (r *AuthResource) PasswordReset(email string) (map[string]interface{}, error) {
	return r.client.Post("/api/passwordreset", map[string]string{"email": email})
}

// Signup - Signup
func (r *AuthResource) Signup(email string, password string, firstName string, lastName string) (map[string]interface{}, error) {
	return r.client.Post("/api/signup", map[string]string{
		"email":      email,
		"password":   password,
		"first_name": firstName,
		"last_name":  lastName,
	})
}
