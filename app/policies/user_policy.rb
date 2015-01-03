class UserPolicy < ApplicationPolicy
  def index?
    grant :admin, :super, :guest
  end

  def create?
    grant :admin, :super
  end

  def update?
    grant :admin, :super
  end

  def destroy?
    grant :admin
  end
end
