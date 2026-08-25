module HiTechCloud
  # Affiliate resource
  class AffiliateResource < BaseResource

    # Get affiliate summary
    def summary
      @http.get("/api/affiliates/summary")
    end

    # Get campaigns
    def campaigns
      @http.get("/api/affiliates/campaigns")
    end

    # Get commissions
    def commissions
      @http.get("/api/affiliates/commissions")
    end

    # Get payouts
    def payouts
      @http.get("/api/affiliates/payouts")
    end

    # Get vouchers
    def vouchers
      @http.get("/api/affiliates/vouchers")
    end

    # Get commission plans
    def commission_plans
      @http.get("/api/affiliates/commissionplans")
    end

  end
end
