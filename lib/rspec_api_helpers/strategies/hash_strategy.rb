require 'factory_girl'
require 'json'
require 'active_support/core_ext'

module RspecApiHelpers
  module Strategies
    class HashStrategy
      def initialize
        @strategy = FactoryGirl.strategy_by_name(:build).new
      end

      delegate :association, to: :@strategy

      def result(evaluation)
        JSON.parse(@strategy.result(evaluation).to_json).symbolize_keys
      end
    end
  end
end
