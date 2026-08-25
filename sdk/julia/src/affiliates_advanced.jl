# AffiliatesAdvanced: advanced affiliate management with client_id
struct AffiliatesAdvancedResource
    http::HttpClient
end

# GET /api/affiliates_adv/{client_id}/info - Get affiliate account info
function get_info(r::AffiliatesAdvancedResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/affiliates_adv/{client_id}/info"; params = params)
end

# GET /api/affiliates_adv/{client_id}/stats - Get affiliate stats
function get_stats(r::AffiliatesAdvancedResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/affiliates_adv/{client_id}/stats"; params = params)
end

# GET /api/affiliates_adv/{client_id}/commission-plans - Get commission plans
function get_commission_plans(r::AffiliatesAdvancedResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/affiliates_adv/{client_id}/commission-plans"; params = params)
end

# GET /api/affiliates_adv/{client_id}/vouchers - Get vouchers
function get_vouchers(r::AffiliatesAdvancedResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/affiliates_adv/{client_id}/vouchers"; params = params)
end

# GET /api/affiliates_adv/{client_id}/commissions - Get commissions
function get_commissions(r::AffiliatesAdvancedResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/affiliates_adv/{client_id}/commissions"; params = params)
end

# GET /api/affiliates_adv/{client_id}/referrals - Get referred clients
function get_referrals(r::AffiliatesAdvancedResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/affiliates_adv/{client_id}/referrals"; params = params)
end

# GET /api/affiliates_adv/{client_id}/payouts - Get payout history
function get_payouts(r::AffiliatesAdvancedResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/affiliates_adv/{client_id}/payouts"; params = params)
end

# GET /api/affiliates_adv/{client_id}/campaigns - Get campaigns
function get_campaigns(r::AffiliatesAdvancedResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/affiliates_adv/{client_id}/campaigns"; params = params)
end

# GET /api/affiliates_adv/{client_id}/audit - Get activity log
function get_audit_log(r::AffiliatesAdvancedResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/affiliates_adv/{client_id}/audit"; params = params)
end

# POST /api/affiliates_adv/{client_id}/activate - Activate affiliate account
function activate(r::AffiliatesAdvancedResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/affiliates_adv/{client_id}/activate"; params = params)
end

# POST /api/affiliates_adv/{client_id}/commission-plan/{commission_id} - Set commission plan
function set_commission_plan(r::AffiliatesAdvancedResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/affiliates_adv/{client_id}/commission-plan/{commission_id}"; params = params)
end

# POST /api/affiliates_adv/{client_id}/vouchers/{plan_id} - Create voucher
function create_voucher(r::AffiliatesAdvancedResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/affiliates_adv/{client_id}/vouchers/{plan_id}"; params = params)
end

# DELETE /api/affiliates_adv/{client_id}/vouchers/{voucher_id} - Delete voucher
function delete_voucher(r::AffiliatesAdvancedResource; kwargs...)
    params = Dict(kwargs)
    http_delete(r.http, "/api/affiliates_adv/{client_id}/vouchers/{voucher_id}"; params = params)
end

# POST /api/affiliates_adv/{client_id}/landing-page - Set landing page
function set_landing_page(r::AffiliatesAdvancedResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/affiliates_adv/{client_id}/landing-page"; params = params)
end
