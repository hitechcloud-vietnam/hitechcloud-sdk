# frozen_string_literal: true

require_relative 'lib/hitechcloud/version'

Gem::Specification.new do |spec|
  spec.name = 'hitechcloud'
  spec.version = HiTechCloud::VERSION
  spec.authors = ['HiTechCloud Vietnam']
  spec.email = ['support@hitechcloud.vn']

  spec.summary = 'Ruby SDK for HiTechCloud UserAPI'
  spec.description = 'Official Ruby SDK for HiTechCloud hosting platform API. Manage domains, services, DNS, SSL, billing, and more.'
  spec.homepage = 'https://github.com/hitechcloud-vietnam/hitechcloud-sdk'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.7.0'

  spec.files = Dir['lib/**/*.rb', 'README.md', 'LICENSE']
  spec.require_paths = ['lib']

  spec.add_dependency 'net-http'
  spec.add_dependency 'json'
end
