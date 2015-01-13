describe RspecApiHelpers::Strategies::LoginHashStrategy do
  before do
    DummyUser = Class.new { attr_accessor :email, :password }

    FactoryGirl.define do
      factory :dummy_user do
        email 'test@test.com'
        password 'foobar123'
      end
    end
  end

  subject { FactoryGirl.login_hash :dummy_user }

  it 'represents user in JSON format' do
    expect(subject).to eq(
      'user' => {
        'email' => 'test@test.com',
        'password' => 'foobar123'
      }
    )
  end
end
