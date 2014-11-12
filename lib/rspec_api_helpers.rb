require 'rspec_api_helpers/version'
require 'rspec_api_helpers/headers'
require 'rspec_api_helpers/json'
require 'rspec_api_helpers/strategies/json_strategy'

require 'active_support/core_ext/object/json'
require 'active_support/core_ext/hash'

FactoryGirl.register_strategy :json, RspecApiHelpers::Strategies::JsonStrategy
