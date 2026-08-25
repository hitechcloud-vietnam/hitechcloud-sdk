# HTTP client for HiTechCloud API
mutable struct HttpClient
    base_url::String
    token::Union{String,Nothing}
    timeout::Int
    max_retries::Int
end

function HttpClient(;
    base_url::String = "https://api.hitechcloud.vn",
    token::Union{String,Nothing} = nothing,
    timeout::Int = 30,
    max_retries::Int = 3
)
    HttpClient(base_url, token, timeout, max_retries)
end

set_token!(c::HttpClient, t::String) = (c.token = t)

function _headers(c::HttpClient)
    h = ["Content-Type" => "application/json", "Accept" => "application/json"]
    c.token !== nothing && push!(h, "Authorization" => "Bearer $(c.token)")
    h
end

function http_get(c::HttpClient, path::String; params::Dict = Dict())
    url = c.base_url * path
    if !isempty(params)
        qs = join(["$k=$v" for (k,v) in params if v !== nothing], "&")
        if !isempty(qs) url *= "?" * qs end
    end
    resp = HTTP.get(url; headers = _headers(c), readtimeout = c.timeout)
    JSON.parse(String(resp.body))
end

function http_post(c::HttpClient, path::String; body::Dict = Dict())
    url = c.base_url * path
    resp = HTTP.post(url; headers = _headers(c), body = JSON.json(body), readtimeout = c.timeout)
    JSON.parse(String(resp.body))
end

function http_put(c::HttpClient, path::String; body::Dict = Dict())
    url = c.base_url * path
    resp = HTTP.put(url; headers = _headers(c), body = JSON.json(body), readtimeout = c.timeout)
    JSON.parse(String(resp.body))
end

function http_delete(c::HttpClient, path::String)
    url = c.base_url * path
    resp = HTTP.delete(url; headers = _headers(c), readtimeout = c.timeout)
    JSON.parse(String(resp.body))
end
