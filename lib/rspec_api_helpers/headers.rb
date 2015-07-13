module RspecApiHelpers
  module Headers
    def headers_for(type)
      _headers.send type
    end

    def _headers
      headers = OpenStruct.new
      headers.json = {
        'CONTENT_TYPE' => 'application/json',
        'HTTP_ACCEPT' => 'application/json'
      }
      headers
    end
  end
end
