VCR.configure do |config|
  config.hook_into :webmock
  config.cassette_library_dir = 'spec/cassettes'
  config.allow_http_connections_when_no_cassette = true
  config.default_cassette_options = { record: ENV.fetch('VCR'){ :once }.to_sym }
  config.configure_rspec_metadata!
end

CassetteRack.configure do |config|
  config.url = 'http://localhost:3000'
end

RSpec.configure do |config|
  config.include CassetteRack::TestRequest, type: :request if ENV.fetch('VCR', nil)
end
