require 'factory_girl'

module RspecApiHelpers
  module Strategies
    class LoginHashStrategy
      def initialize
        @strategy = FactoryGirl.strategy_by_name(:create).new
      end

      delegate :association, to: :@strategy

      def result(evaluation)
        user = @strategy.result(evaluation)

        {
          'user' => {
            'email' => user.email,
            'password' => user.password
          }
        }
      end
    end
  end
end
