package hitechcloud

// AuthResource handles authentication endpoints
type AuthResource struct {
	client *HTTPClient
}

func (r *AuthResource) Login(email, password string) (map[string]interface{}, error) {
	return r.client.Post("/api/auth/login", map[string]string{
		"email":    email,
		"password": password,
	})
}

func (r *AuthResource) Logout() (map[string]interface{}, error) {
	return r.client.Post("/api/auth/logout", nil)
}

func (r *AuthResource) RefreshToken() (map[string]interface{}, error) {
	return r.client.Post("/api/auth/refresh", nil)
}

func (r *AuthResource) RevokeToken() (map[string]interface{}, error) {
	return r.client.Post("/api/auth/revoke", nil)
}

func (r *AuthResource) PasswordReset(email string) (map[string]interface{}, error) {
	return r.client.Post("/api/auth/password/reset", map[string]string{"email": email})
}

func (r *AuthResource) Signup(email, password, firstName, lastName string) (map[string]interface{}, error) {
	return r.client.Post("/api/auth/signup", map[string]string{
		"email":      email,
		"password":   password,
		"first_name": firstName,
		"last_name":  lastName,
	})
}
