class UsersController < ApplicationController
  def dashboard
    @arenas = current_user.arenas
    @bookings = current_user.bookings
    @my_bookings = current_user.bookings_as_owner
  end
end
