class User < ActiveRecord::Base
  has_secure_password
  serialize :roles, Array

  class << self
    def sign_in(params)
      find_by(username: params[:username]).try(:authenticate, params[:password])
    end
  end

  state_machine initial: :active do
    event :block do
      transition active: :blocked
    end

    event :activate do
      transition blocked: :active
    end

    event :cancel do
      transition [:active, :blocked] => :canceled
    end
  end
end
