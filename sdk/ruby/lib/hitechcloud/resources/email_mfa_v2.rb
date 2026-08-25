module HiTechCloud
  # EmailMfaV2 resource
  class EmailMfaV2Resource < BaseResource

    # Get status
    def status(user_type, user_id)
      @http.get("/api/email_mfa_v2/status/%{user_type}/%{user_id}" % { user_type: user_type, user_id: user_id })
    end

    # Send OTP
    def send(data)
      @http.post("/api/email_mfa_v2/send", data)
    end

    # Verify OTP
    def verify(data)
      @http.post("/api/email_mfa_v2/verify", data)
    end

    # List sessions
    def list(user_type, user_id)
      @http.get("/api/email_mfa_v2/list/%{user_type}/%{user_id}" % { user_type: user_type, user_id: user_id })
    end

    # Revoke all
    def revoke_all(data)
      @http.post("/api/email_mfa_v2/revokeall", data)
    end

    # Disable MFA
    def disable(data)
      @http.post("/api/email_mfa_v2/disable", data)
    end

  end
end
