class UsersController < ApplicationController
  def dashboard
    @arenas = Arena.all
  end
end
