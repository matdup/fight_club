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
    true
  end

  # def update?
  #   @record.user == @user
  # end

  # def destroy?
  #   @record.user == @user
  # end
end
