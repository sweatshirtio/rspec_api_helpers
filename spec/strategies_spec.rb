describe RspecApiHelpers::Strategies::JsonStrategy do
  before do
    User = Class.new { attr_accessor :name, :email }

    FactoryGirl.define do
      factory :user do
        email 'test@test.com'
        name 'Mrs. Mock'
      end
    end
  end

  subject { FactoryGirl.json :user }

  it 'should render user as json' do
    expect(subject).to eq '{"email":"test@test.com","name":"Mrs. Mock"}'
  end
end
