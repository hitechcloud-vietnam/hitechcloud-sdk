# Affiliate: affiliate program management
struct AffiliateResource
    http::HttpClient
end

# GET /api/affiliates/summary - Get Affiliate summary
function get_summary(r::AffiliateResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/affiliates/summary"; params = params)
end

# GET /api/affiliates/campaigns - Get Affiliate campaigns
function list_campaigns(r::AffiliateResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/affiliates/campaigns"; params = params)
end

# GET /api/affiliates/commissions - Get Affiliate commissions
function list_commissions(r::AffiliateResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/affiliates/commissions"; params = params)
end

# GET /api/affiliates/payouts - Get Affiliate payouts
function list_payouts(r::AffiliateResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/affiliates/payouts"; params = params)
end

# GET /api/affiliates/vouchers - Get Affiliate vouchers
function list_vouchers(r::AffiliateResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/affiliates/vouchers"; params = params)
end

# GET /api/affiliates/commissionplans - Get Affiliate commission plans
function list_commission_plans(r::AffiliateResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/affiliates/commissionplans"; params = params)
end
