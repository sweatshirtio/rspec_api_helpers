require 'factory_girl'

module RspecApiHelpers
  module Strategies
    class JsonStrategy
      def initialize
        @strategy = FactoryGirl.strategy_by_name(:build).new
      end

      delegate :association, to: :@strategy

      def result(evaluation)
        @strategy.result(evaluation).to_json
      end
    end
  end
end
