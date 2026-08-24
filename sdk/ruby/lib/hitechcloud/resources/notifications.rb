# frozen_string_literal: true

module HiTechCloud
  module Resources
    class Notifications < Base
      def list(params = {})
        @http.get('/api/notifications', params: params)
      end

      def get_preferences
        @http.get('/api/notifications/preferences')
      end

      def update_preferences(data)
        @http.put('/api/notifications/preferences', body: data)
      end
    end
  end
end
