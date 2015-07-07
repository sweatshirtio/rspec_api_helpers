require 'active_support'
require 'json'

module RspecApiHelpers
  module Json
    def response_body
      @response_body ||= parse_json response.body
    end

    def parse_json(json)
      ActiveSupport::HashWithIndifferentAccess.new(JSON.parse json)
    end
  end
end
