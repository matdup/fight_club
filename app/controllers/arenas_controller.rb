class ArenasController < ApplicationController
  before_action :set_arena, only: [:show, :edit, :update, :destroy]

  def index
    @arenas = Arena.all
  end

  def show
    authorize @arena
  end

  def new
    @arena = Arena.new
    authorize @arena
  end

  def create

    @arena = Arena.new(arena_params)
    @arena.user = current_user
    authorize @arena
    if @arena.save
      redirect_to arenas_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    authorize @arena
    @arena.update(arena_params)
    redirect_to arenas_path
  end

  def destroy
    authorize @arena
    @arena.destroy
    redirect_to arenas_path
  end

  private

  def arena_params
    params.require(:arena).permit(:title, :description, :photo, :price)
  end

  def set_arena
    @arena = Arena.find(params[:id])
  end
end

