class BookingPolicy < ApplicationPolicy
  # class Scope < Scope
  #   def resolve
  #   scope.all # Restaurant.all
  #   scope.where(user: @user)
  #   Restaurant.where(user: @user)

  #   end
  # end

  def show?
    true
  end

  def create?
    @record.arena.user != user
  end

  def update?
    @user.admin || @record.user == @user
  end

  def destroy?
    @user.admin || @record.user == @user
  end
end
