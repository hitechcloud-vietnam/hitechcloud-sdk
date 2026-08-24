# frozen_string_literal: true

module HiTechCloud
  module Resources
    class Billing < Base
      def get_balance
        @http.get('/api/billing/balance')
      end

      def list_invoices(params = {})
        @http.get('/api/billing/invoices', params: params)
      end

      def get_invoice(invoice_id)
        @http.get("/api/billing/invoices/#{invoice_id}")
      end

      def apply_credit(amount)
        @http.post('/api/billing/credit', body: { amount: amount })
      end

      def get_payment_methods
        @http.get('/api/billing/methods')
      end

      def get_payment_fees
        @http.get('/api/billing/fees')
      end
    end
  end
end
