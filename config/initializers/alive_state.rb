AliveState.configure do |config|
  config.path = 'rails/info/alive_state'
  config.version = Rails.root.join 'VERSION'
end
