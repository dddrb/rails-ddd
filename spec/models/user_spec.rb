require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }

  describe ".new" do
    it "creates a new user" do
      expect(user.username).to eq 'root'
    end
  end
end
