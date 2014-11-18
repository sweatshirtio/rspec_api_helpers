describe RspecApiHelpers::Headers do
  describe '.headers_for' do
    describe :json do
      subject { headers_for :json}

      it {is_expected.to be_a Hash }

      it 'returns CONTENT_TYPE as application/json' do
        expect(subject['CONTENT_TYPE']).to eq 'application/json'
      end

      it 'returns ACCEPT as application/json' do
        expect(subject['ACCEPT']).to eq 'application/json'
      end
    end
  end
end
