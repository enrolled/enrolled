class UserPolicy < ApplicationPolicy

  def index?
    @user.has_role? :admin
  end

  def create?
    @user.has_role? :admin
  end

  def new?
    create?
  end

  def update?
    @user == @record || @user.has_role?(:admin)
  end

  def edit?
    update?
  end

  def destroy?
    @user != @record && @user.has_role?(:admin)
  end
end