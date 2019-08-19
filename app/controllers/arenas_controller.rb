class ArenasController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]


  def index
    @arenas = Arena.all
  end

  def show

  end

  def new
    @arena = Arena.new
  end

  def create
    @arena = Arena.new(arena_params)
    @arena.save
    redirect_to arenas_path(@arena)
  end

  def edit
  end

  def update
    @arena.update(arena_params)
    redirect_to arena_path(@arena)
  end

  def destroy
    @arena.destroy
    redirect_to arenas_path
  end

  private

  def arena_params
    params.require(:arena).permit(:name, :address, :stars)
  end

  def set_arena
    @arena = Arena.find(params[:id])
  end
end

