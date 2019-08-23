class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @arena = Arena.find(params[:arena_id])
    @booking = Booking.new
  end

  def create
    @arena = Arena.find(params[:arena_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.arena = @arena
    @booking.price = @arena.price
    @booking.status = "pending"
    authorize @booking
    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @arena = Arena.find(@booking.arena_id)
  end

  def accept
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.status = "accepted"
    @booking.save
    redirect_to dashboard_path
  end

  def decline
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.status = "declined"
    @booking.save
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :arena_id, :status)
  end
end
