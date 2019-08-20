class BookingsController < ApplicationController

  def create
    @arena = Arena.find(params[:arena_id])
    @booking = Booking.new(booking_params)
    @booking.arena = @arena
    @booking.user = current_user
    if @booking.save
      redirect_to arena_path(@arena)
    else
      render 'arenas/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_at, :ends_at)
  end
end
