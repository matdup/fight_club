class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def index
    @arenas = Arena.all
  end
end
