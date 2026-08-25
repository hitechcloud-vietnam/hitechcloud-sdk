module HiTechCloud
  class AuthResource < BaseResource

    # Login
    def login(email, password)
      @http.post("/api/login", { "email": email, "password": password })
    end

    # Logout
    def logout
      @http.post("/api/logout")
    end

    # Refresh token
    def refresh_token
      @http.post("/api/token")
    end

    # Revoke token
    def revoke_token
      @http.post("/api/revoke")
    end

    # Password reset
    def password_reset(email)
      @http.post("/api/passwordreset", { "email": email })
    end

    # Signup
    def signup(email, password, first_name, last_name)
      @http.post("/api/signup", { "email": email, "password": password, "first_name": first_name, "last_name": last_name })
    end

  end
end
