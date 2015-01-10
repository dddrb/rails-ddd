require 'rails_helper'

RSpec.describe "Users", type: :request do
  before do
    @user = create(:user)
  end

  describe "GET /v1/users", vcr: { cassette_name: 'api/v1/users/index' } do
    it "returns some users" do
      get v1_users_path
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /v1/users/:id", vcr: { cassette_name: 'api/v1/users/show' } do
    it "returns a user" do
      get v1_user_path(@user.id)
      expect(response).to have_http_status(200)
    end
  end
end
