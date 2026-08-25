module HiTechCloud
  # AffiliatesAdvanced resource
  class AffiliatesAdvancedResource < BaseResource

    # Get info
    def info(client_id)
      @http.get("/api/affiliates_adv/%{client_id}/info" % { client_id: client_id })
    end

    # Get stats
    def stats(client_id)
      @http.get("/api/affiliates_adv/%{client_id}/stats" % { client_id: client_id })
    end

    # Get commission plans
    def commission_plans(client_id)
      @http.get("/api/affiliates_adv/%{client_id}/commission-plans" % { client_id: client_id })
    end

    # Get vouchers
    def vouchers(client_id)
      @http.get("/api/affiliates_adv/%{client_id}/vouchers" % { client_id: client_id })
    end

    # Get commissions
    def commissions(client_id)
      @http.get("/api/affiliates_adv/%{client_id}/commissions" % { client_id: client_id })
    end

    # Get referrals
    def referrals(client_id)
      @http.get("/api/affiliates_adv/%{client_id}/referrals" % { client_id: client_id })
    end

    # Get payouts
    def payouts(client_id)
      @http.get("/api/affiliates_adv/%{client_id}/payouts" % { client_id: client_id })
    end

    # Get campaigns
    def campaigns(client_id)
      @http.get("/api/affiliates_adv/%{client_id}/campaigns" % { client_id: client_id })
    end

    # Get audit log
    def audit(client_id)
      @http.get("/api/affiliates_adv/%{client_id}/audit" % { client_id: client_id })
    end

    # Activate
    def activate(client_id, data)
      @http.post("/api/affiliates_adv/%{client_id}/activate" % { client_id: client_id }, data)
    end

    # Set commission plan
    def set_commission_plan(client_id, commission_id)
      @http.post("/api/affiliates_adv/%{client_id}/commission-plan/%{commission_id}" % { client_id: client_id, commission_id: commission_id })
    end

    # Create voucher
    def create_voucher(client_id, plan_id, data)
      @http.post("/api/affiliates_adv/%{client_id}/vouchers/%{plan_id}" % { client_id: client_id, plan_id: plan_id }, data)
    end

    # Delete voucher
    def delete_voucher(client_id, voucher_id)
      @http.delete("/api/affiliates_adv/%{client_id}/vouchers/%{voucher_id}" % { client_id: client_id, voucher_id: voucher_id })
    end

    # Set landing page
    def set_landing_page(client_id, data)
      @http.post("/api/affiliates_adv/%{client_id}/landing-page" % { client_id: client_id }, data)
    end

  end
end
