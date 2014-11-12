RspecApiHelpers
===============

This is a Gem to help you with all of you Rails API testing woes. The goal is
to provide functionality to make testing APIs a breeze. I hope you like it!

Add this to your Gemfile:

    gem 'rspec_api_helpers'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec_api_helpers

## Usage

1. Built it strategy for coercing FactoryGirl factories into json:

```ruby
FactoryGirl.json :user, name: 'Mrs. Mock', email: 'test@test.com'
# => {\"name\":\"Mrs. Mock\",\"email\":\"test@test.com\"}"
```

2. Ready-to-fire headers:

```ruby
headers_for :json
# => { 'CONTENT_TYPE' => 'application/json', 'ACCEPT' => 'application/json' }
```

3. Automatic JSON parsing for `response.body`:

```ruby
# Call this in your spec
response_body
```

4. Hash with indifferent access by default when parsing JSON:

```ruby
parse_json response.body
# => can now use user[:email], etc.
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec_api_helpers'
```

## Contributing

1. Fork it ( https://github.com/sweatshirtio/rspec_api_helpers/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
