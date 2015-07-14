require 'rspec_api_helpers/version'
require 'rspec_api_helpers/headers'
require 'rspec_api_helpers/json'
require 'rspec_api_helpers/strategies/json_strategy'
require 'rspec_api_helpers/strategies/login_hash_strategy'
require 'rspec_api_helpers/strategies/hash_strategy'

require 'active_support/core_ext/object/json'
require 'active_support/core_ext/hash'

module RspecApiHelpers
  def self.included(base)
    constants.map(&method(:const_get)).each do |const|
      base.include const if const.class == Module
    end
  end
end

FactoryGirl.register_strategy :json, RspecApiHelpers::Strategies::JsonStrategy
FactoryGirl.register_strategy :login_hash, RspecApiHelpers::Strategies::LoginHashStrategy
FactoryGirl.register_strategy :hash, RspecApiHelpers::Strategies::HashStrategy
