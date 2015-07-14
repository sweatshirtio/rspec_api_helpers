describe RspecApiHelpers::Strategies::HashStrategy do
  before do
    Person = Class.new { attr_accessor :name, :email }

    FactoryGirl.define do
      factory :person do
        email 'test@test.com'
        name 'Mrs. Mock'
      end
    end
  end

  subject { FactoryGirl.hash :person }

  it 'represents user in JSON format' do
    hash = { 'email' => 'test@test.com', 'name' => 'Mrs. Mock' }
    expect(subject).to eq hash
  end
end
