# frozen_string_literal: true

module HiTechCloud
  module Resources
    class Base
      def initialize(http_client)
        @http = http_client
      end
    end
  end
end
