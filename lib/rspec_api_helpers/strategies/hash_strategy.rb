require 'factory_girl'
require 'json'

module RspecApiHelpers
  module Strategies
    class HashStrategy
      def initialize
        @strategy = FactoryGirl.strategy_by_name(:build).new
      end

      delegate :association, to: :@strategy

      def result(evaluation)
        JSON.parse @strategy.result(evaluation).to_json
      end
    end
  end
end
