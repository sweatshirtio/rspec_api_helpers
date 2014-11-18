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
    it 'has indifferent hash access' do
      expect(subject[:email]).to eq 'test@test.com'
    end

    it 'has indifferent hash access for nested hashes' do
      expect(subject[:location][:city]).to eq 'Somewhere'
    end
  end

  describe '.response_body' do
    before { allow(response).to receive(:body) { data } }

    it 'returns a hash' do
      expect(response_body).to be_a Hash
    end

    it 'parses JSON correctly' do
      expect(response_body[:email]).to eq 'test@test.com'
      expect(response_body[:data]).to eq 'is good'
      expect(response_body[:location][:city]).to eq 'Somewhere'
      expect(response_body[:location][:state]).to eq 'Cool'
    end
  end
end
