# frozen_string_literal: true

module HiTechCloud
  module Resources
    class Cart < Base
      def get
        @http.get('/api/cart')
      end

      def add(data)
        @http.post('/api/cart', body: data)
      end

      def remove(item_id)
        @http.delete("/api/cart/#{item_id}")
      end

      def apply_promo(code)
        @http.post('/api/cart/promo', body: { code: code })
      end

      def checkout(data)
        @http.post('/api/cart/checkout', body: data)
      end

      def get_payment_methods
        @http.get('/api/cart/payment_methods')
      end
    end
  end
end
