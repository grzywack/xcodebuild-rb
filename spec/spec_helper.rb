ENV["LC_CTYPE"] = "en_US.UTF-8"

# This file was generated by the `rspec --init` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# Require this file using `require "spec_helper.rb"` to ensure that it is only
# loaded once.
#
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
end

$:.unshift File.join(File.dirname(__FILE__), *%w[.. lib])

require 'xcodebuild'
require 'timecop'
require 'time'

def delegate_should_respond_to(method)
  mock_should_respond?(delegate, method, true)
end

def delegate_should_not_respond_to(method)
  mock_should_respond?(delegate, method, false)
end

def mock_should_respond?(mock, method, should_respond)
  mock.stub(:respond_to?).with(method).and_return(should_respond)
end
