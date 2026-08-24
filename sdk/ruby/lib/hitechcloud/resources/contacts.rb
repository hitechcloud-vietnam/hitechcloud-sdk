# frozen_string_literal: true

module HiTechCloud
  module Resources
    class Contacts < Base
      def list(params = {})
        @http.get('/api/contact', params: params)
      end

      def get(contact_id)
        @http.get("/api/contact/#{contact_id}")
      end

      def create(data)
        @http.post('/api/contact', body: data)
      end

      def update(contact_id, data)
        @http.put("/api/contact/#{contact_id}", body: data)
      end

      def delete(contact_id)
        @http.delete("/api/contact/#{contact_id}")
      end
    end
  end
end
