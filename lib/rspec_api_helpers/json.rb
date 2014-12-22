require 'active_support'

module RspecApiHelpers
  module Json
    def response_body
      @response_body ||= parse_json response.body
    end

    def parse_json(json)
      ActiveSupport::HashWithIndifferentAccess.new(ActiveSupport::JSON.decode json)
    end
  end
end
