# frozen_string_literal: true

module HiTechCloud
  module Resources
    class Affiliate < Base
      def get_details
        @http.get('/api/affiliate')
      end

      def get_balance
        @http.get('/api/affiliate/balance')
      end

      def get_payout
        @http.get('/api/affiliate/payout')
      end

      def update_payout(data)
        @http.put('/api/affiliate/payout', body: data)
      end

      def list_referrals(params = {})
        @http.get('/api/affiliate/referrals', params: params)
      end

      def list_transactions(params = {})
        @http.get('/api/affiliate/transactions', params: params)
      end
    end
  end
end
