require 'rails_helper'

RSpec.describe "Users", type: :request do
  let(:headers) { {CONTENT_TYPE: 'application/json'} }

  context "New User" do
    describe "POST /v1/users", vcr: { cassette_name: 'api/v1/users/create' } do
      it "creates a user" do
        post v1_users_path, attributes_for(:user).to_json, headers
        expect(response).to have_http_status(201)
      end
    end
  end

  context "Set User" do
    let(:user) { create(:user) }

    describe "GET /v1/users", vcr: { cassette_name: 'api/v1/users/index' } do
      it "returns some users" do
        get v1_users_path
        expect(response).to have_http_status(200)
      end
    end

    describe "GET /v1/users/:id", vcr: { cassette_name: 'api/v1/users/show' } do
      it "returns a user" do
        get v1_user_path(user.id)
        expect(response).to have_http_status(200)
      end
    end

    describe "PATCH /v1/users/:id", vcr: { cassette_name: 'api/v1/users/update' } do
      it "updates a user" do
        patch v1_user_path(user.id), attributes_for(:user).to_json, headers
        expect(response).to have_http_status(200)
      end
    end

    describe "DELETE /v1/users/:id", vcr: { cassette_name: 'api/v1/users/destroy' } do
      it "deletes a user" do
        delete v1_user_path(user.id)
        expect(response).to have_http_status(204)
      end
    end
  end
end
