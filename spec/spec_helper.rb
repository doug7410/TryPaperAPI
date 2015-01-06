require 'trypaper'
require 'vcr'
require 'webmock/rspec'
require 'json'


RSpec.configure do |config|
  # some (optional) config here
end

VCR.configure do |c|
  c.cassette_library_dir = "spec/fixtures/cassettes"
  c.hook_into :webmock
end
