# frozen_string_literal: true

require_relative 'lib/hitechcloud/version'
require_relative 'lib/hitechcloud/exceptions'
require_relative 'lib/hitechcloud/http_client'
require_relative 'lib/hitechcloud/resources/base'
require_relative 'lib/hitechcloud/resources/auth'
require_relative 'lib/hitechcloud/resources/users'
require_relative 'lib/hitechcloud/resources/services'
require_relative 'lib/hitechcloud/resources/domains'
require_relative 'lib/hitechcloud/resources/dns_manage'
require_relative 'lib/hitechcloud/resources/dns'
require_relative 'lib/hitechcloud/resources/ssl'
require_relative 'lib/hitechcloud/resources/billing'
require_relative 'lib/hitechcloud/resources/support'
require_relative 'lib/hitechcloud/resources/contacts'
require_relative 'lib/hitechcloud/resources/cart'
require_relative 'lib/hitechcloud/resources/notifications'
require_relative 'lib/hitechcloud/resources/affiliate'
require_relative 'lib/hitechcloud/resources/cloud_gpu'
require_relative 'lib/hitechcloud/resources/virtualizor'
require_relative 'lib/hitechcloud/client'

module HiTechCloud
  PRODUCTION_URL = 'https://api.hitechcloud.vn'
  OTE_URL = 'https://ote.hitechcloud.vn'
end
