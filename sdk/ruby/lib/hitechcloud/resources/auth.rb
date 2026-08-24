# frozen_string_literal: true

module HiTechCloud
  module Resources
    class Auth < Base
      def login(email, password)
        @http.post('/api/auth/login', body: { email: email, password: password })
      end

      def logout
        @http.post('/api/auth/logout')
      end

      def refresh_token
        @http.post('/api/auth/refresh')
      end

      def revoke_token
        @http.post('/api/auth/revoke')
      end

      def password_reset(email)
        @http.post('/api/auth/password/reset', body: { email: email })
      end

      def signup(email:, password:, first_name:, last_name:)
        @http.post('/api/auth/signup', body: {
          email: email, password: password,
          first_name: first_name, last_name: last_name
        })
      end
    end
  end
end
