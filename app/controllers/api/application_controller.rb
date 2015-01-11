class Api::ApplicationController < ActionController::Base
  protect_from_forgery
  skip_before_action :verify_authenticity_token
end
