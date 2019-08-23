class UsersController < ApplicationController
  def dashboard
    @arenas = current_user.arenas
    @bookings = current_user.bookings
  end
end
