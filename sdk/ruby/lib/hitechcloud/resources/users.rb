# frozen_string_literal: true

module HiTechCloud
  module Resources
    class Users < Base
      def get_details
        @http.get('/api/user')
      end

      def update_details(data)
        @http.put('/api/user', body: data)
      end

      def get_logs
        @http.get('/api/user/logs')
      end
    end
  end
end
