# Partner: partner program, tiers, pricing, customers, earnings, wallet, payouts, leads, referral, rates
struct PartnerResource
    http::HttpClient
end

# GET /api/partner - Get partner info
function get_partner_info(r::PartnerResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/partner"; params = params)
end

# POST /api/partner/apply - Apply to partner program
function apply(r::PartnerResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/partner/apply"; params = params)
end

# GET /api/partner/tiers - List partner tiers
function list_tiers(r::PartnerResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/partner/tiers"; params = params)
end

# GET /api/partner/pricing - Get partner pricing
function get_pricing(r::PartnerResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/partner/pricing"; params = params)
end

# GET /api/partner/customers - List customers
function list_customers(r::PartnerResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/partner/customers"; params = params)
end

# GET /api/partner/earnings - Get earnings
function get_earnings(r::PartnerResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/partner/earnings"; params = params)
end

# GET /api/partner/wallet - Get wallet balance
function get_wallet(r::PartnerResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/partner/wallet"; params = params)
end

# GET /api/partner/payouts - List payouts
function list_payouts(r::PartnerResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/partner/payouts"; params = params)
end

# POST /api/partner/payouts - Request payout
function request_payout(r::PartnerResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/partner/payouts"; params = params)
end

# GET /api/partner/leads - List leads
function list_leads(r::PartnerResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/partner/leads"; params = params)
end

# POST /api/partner/leads - Create lead
function create_lead(r::PartnerResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/partner/leads"; params = params)
end

# GET /api/partner/referral - Get referral info
function get_referral(r::PartnerResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/partner/referral"; params = params)
end

# GET /api/partner/rates - Get exchange rates
function get_rates(r::PartnerResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/partner/rates"; params = params)
end
