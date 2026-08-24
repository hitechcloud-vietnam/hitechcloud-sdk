# frozen_string_literal: true

require 'net/http'
require 'json'
require 'uri'

module HiTechCloud
  class HTTPClient
    attr_accessor :token

    def initialize(base_url, timeout: 30, max_retries: 3)
      @base_url = base_url
      @timeout = timeout
      @max_retries = max_retries
      @token = nil
    end

    def request(method, path, body: nil, params: nil)
      last_error = nil

      (0..@max_retries).each do |attempt|
        begin
          url = "#{@base_url}#{path}"
          url += "?#{URI.encode_www_form(params)}" if params && !params.empty?

          uri = URI(url)
          http = Net::HTTP.new(uri.host, uri.port)
          http.use_ssl = uri.scheme == 'https'
          http.read_timeout = @timeout

          case method.to_s.upcase
          when 'GET'
            req = Net::HTTP::Get.new(uri)
          when 'POST'
            req = Net::HTTP::Post.new(uri)
            req.body = body.to_json if body
          when 'PUT'
            req = Net::HTTP::Put.new(uri)
            req.body = body.to_json if body
          when 'DELETE'
            req = Net::HTTP::Delete.new(uri)
          end

          req['Content-Type'] = 'application/json'
          req['User-Agent'] = "HiTechCloud-SDK-Ruby/#{VERSION}"
          req['Authorization'] = "Bearer #{@token}" if @token

          response = http.request(req)

          if response.code.to_i == 429 && attempt < @max_retries
            retry_after = response['Retry-After']&.to_i || 60
            sleep(retry_after)
            next
          end

          if response.code.to_i >= 500 && attempt < @max_retries
            sleep(2**attempt)
            next
          end

          result = JSON.parse(response.body)

          if response.code.to_i >= 400
            HiTechCloud.map_error(response.code.to_i, result)
          end

          return result
        rescue StandardError => e
          last_error = e
          raise if e.is_a?(HiTechCloudError)
          sleep(2**attempt) if attempt < @max_retries
        end
      end

      raise last_error
    end

    def get(path, params: nil)
      request('GET', path, params: params)
    end

    def post(path, body: nil)
      request('POST', path, body: body)
    end

    def put(path, body: nil)
      request('PUT', path, body: body)
    end

    def delete(path)
      request('DELETE', path)
    end
  end
end
