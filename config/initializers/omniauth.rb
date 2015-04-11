require 'forcedotcom'

OmniAuth.config.full_host = 'https://localhost:3000'

module OmniAuth
  module Strategies
    autoload :Forcedotcom, 'lib/forcedotcom'
  end
end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :forcedotcom, '3MVG9VmVOCGHKYBSMFoH607T0CnBOhjc53A0HyP3Ow9gYjwWVFvv4VOeueERzhsl3mQKziprCe.Fc14mA2iwp', '5246129761561248443'
end