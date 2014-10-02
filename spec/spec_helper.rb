require 'pry'

require 'coveralls'
Coveralls.wear!

require 'simplecov'
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]

# Must start SimpleCov before requiring test target library.
SimpleCov.start do
  add_filter 'vendor/bundle'
end

require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start

require 'denwa'

RSpec.configure do |config|
  config.order = 'random'
end
