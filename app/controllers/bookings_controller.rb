class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end
​
  def new
    @arena = Arena.find(params[:arena_id])
    @booking = Booking.new
  end
​
  def create
    @arena = Arena.find(params[:arena_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.arena = @arena
    @booking.price = @arena.price
    @booking.status = "pending"
    authorize @booking
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end
​
  def show
    @booking = Booking.find(params[:id])
    @arena = Arena.find(@booking.arena_id)
  end
​
  def accept
    @booking = Booking.find(params[:booking_id])
    @booking.status = "accepted"
    @booking.save
    redirect_to arena_bookings_path(@booking)
  end
​
  def decline
    @booking = Booking.find(params[:booking_id])
    @booking.status = "declined"
    @booking.save
    redirect_to arena_bookings_path(@booking)
  end

  private
​
  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :arena_id, :status)
  end
end
