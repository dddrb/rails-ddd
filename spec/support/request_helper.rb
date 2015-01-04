require 'active_support/concern'

module RequestHelper
  extend ActiveSupport::Concern

  included do
    let(:current_user) { create(:user) }

    before do
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(current_user)
    end
  end
end
