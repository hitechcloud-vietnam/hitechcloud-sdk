module HiTechCloud
  # PasskeyV2 resource
  class PasskeyV2Resource < BaseResource

    # Get status
    def status(user_type, user_id)
      @http.get("/api/passkeyv2/status/%{user_type}/%{user_id}" % { user_type: user_type, user_id: user_id })
    end

    # List credentials
    def credentials(user_type, user_id)
      @http.get("/api/passkeyv2/credentials/%{user_type}/%{user_id}" % { user_type: user_type, user_id: user_id })
    end

    # Delete credential
    def delete_credential(user_type, user_id, data)
      @http.post("/api/passkeyv2/credentials/%{user_type}/%{user_id}/delete" % { user_type: user_type, user_id: user_id }, data)
    end

    # Send email OTP
    def send_email_otp(data)
      @http.post("/api/passkeyv2/email_otp/send", data)
    end

    # Verify email OTP
    def verify_email_otp(data)
      @http.post("/api/passkeyv2/email_otp/verify", data)
    end

    # Disable MFA
    def disable_mfa(user_type, user_id)
      @http.post("/api/passkeyv2/disable/%{user_type}/%{user_id}" % { user_type: user_type, user_id: user_id })
    end

  end
end
