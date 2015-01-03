class User < ActiveRecord::Base
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
