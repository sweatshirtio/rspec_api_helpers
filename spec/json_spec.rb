describe RspecApiHelpers::Json do
  let(:data) do
    <<-json
      {
        "data" : "is good",
        "email" : "test@test.com",
        "location" : {
          "city" : "Somewhere",
          "state" : "Cool"
        }
      }
    json
  end

  let(:response) { Class.new }

  subject { parse_json data }

  describe '.parse_json' do
    it 'should have indifferent access' do
      expect(subject[:email]).to eq 'test@test.com'
    end

    it 'should have indifferent access (nested)' do
      expect(subject[:location][:city]).to eq 'Somewhere'
    end
  end

  describe '.response_body' do
    before { allow(response).to receive(:body) { data } }

    it 'should return a hash' do
      expect(response_body).to be_a Hash
    end

    it 'return correct data' do
      expect(response_body[:email]).to eq 'test@test.com'
    end
  end
end
