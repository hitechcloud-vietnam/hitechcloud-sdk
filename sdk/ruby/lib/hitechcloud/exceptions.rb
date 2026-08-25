# frozen_string_literal: true

module HiTechCloud
  class HiTechCloudError < StandardError
    attr_reader :status_code, :data

    def initialize(message, status_code: nil, data: nil)
      super(message)
      @status_code = status_code
      @data = data
    end
  end

  Error = HiTechCloudError

  class AuthenticationError < HiTechCloudError; end
  class AuthorizationError < HiTechCloudError; end
  class NotFoundError < HiTechCloudError; end

  class RateLimitError < HiTechCloudError
    attr_reader :retry_after

    def initialize(message, retry_after: 60, **opts)
      super(message, **opts)
      @retry_after = retry_after
    end
  end

  class ValidationError < HiTechCloudError; end
  class ServerError < HiTechCloudError; end

  def self.map_error(status_code, data)
    message = data['error'] || data['message'] || 'API error'

    case status_code
    when 401
      raise AuthenticationError.new(message, status_code: status_code, data: data)
    when 403
      raise AuthorizationError.new(message, status_code: status_code, data: data)
    when 404
      raise NotFoundError.new(message, status_code: status_code, data: data)
    when 422
      raise ValidationError.new(message, status_code: status_code, data: data)
    when 429
      raise RateLimitError.new(message, status_code: status_code, data: data)
    else
      if status_code >= 500
        raise ServerError.new(message, status_code: status_code, data: data)
      end
      raise HiTechCloudError.new(message, status_code: status_code, data: data)
    end
  end
end
