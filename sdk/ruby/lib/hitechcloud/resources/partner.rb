module HiTechCloud
  # Partner resource
  class PartnerResource < BaseResource

    # Get partner info
    def info
      @http.get("/api/partner")
    end

    # Apply
    def apply(data)
      @http.post("/api/partner/apply", data)
    end

    # Get tiers
    def tiers
      @http.get("/api/partner/tiers")
    end

    # Get pricing
    def pricing
      @http.get("/api/partner/pricing")
    end

    # Get customers
    def customers
      @http.get("/api/partner/customers")
    end

    # Get earnings
    def earnings
      @http.get("/api/partner/earnings")
    end

    # Get wallet
    def wallet
      @http.get("/api/partner/wallet")
    end

    # Get payouts
    def payouts
      @http.get("/api/partner/payouts")
    end

    # Request payout
    def request_payout(data)
      @http.post("/api/partner/payouts", data)
    end

    # Get leads
    def leads
      @http.get("/api/partner/leads")
    end

    # Create lead
    def create_lead(data)
      @http.post("/api/partner/leads", data)
    end

    # Get referral
    def referral
      @http.get("/api/partner/referral")
    end

    # Get rates
    def rates
      @http.get("/api/partner/rates")
    end

  end
end
