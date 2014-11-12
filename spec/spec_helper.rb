require 'rspec_api_helpers'
require 'rspec/active_model/mocks'

Dir[File.dirname(__FILE__) + "/support/**/*.rb"].each {|f| require f}

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.warnings = true
  config.default_formatter = 'doc' if config.files_to_run.one?
  config.order = :random

  Kernel.srand config.seed

  config.include RspecApiHelpers::Json
  config.include RspecApiHelpers::Headers
end
