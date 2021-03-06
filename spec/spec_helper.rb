require 'trypaper'
require 'vcr'
require 'webmock/rspec'

TEST_API_KEY = "TPTESTCF24A7D8095EDF88E3EFD6103C"
DEFAULT_RETURN_ADDRESS = "555_Main_Street_Fake_City"

RSpec.configure do |config|
  # some (optional) config here
end

VCR.configure do |c|
  c.cassette_library_dir = "spec/fixtures/cassettes"
  c.hook_into :webmock
  c.default_cassette_options = { :record => :once }
end

TryPaper.configure do |c|
  c.api_key = TEST_API_KEY
  c.return_address = DEFAULT_RETURN_ADDRESS
end