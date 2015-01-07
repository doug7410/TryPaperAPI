require 'trypaper'
require 'vcr'
require 'webmock/rspec'

TEST_API_KEY = "TPTESTCF24A7D8095EDF88E3EFD6103C"

RSpec.configure do |config|
  # some (optional) config here
end

VCR.configure do |c|
  c.cassette_library_dir = "spec/fixtures/cassettes"
  c.hook_into :webmock
  c.default_cassette_options = { :record => :once }
end
