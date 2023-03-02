class BookingController < ApplicationController

  def index
    @bookings = booking.all
  end

  def show
    @booking = booking.find(params[:id])
  end

  def new
    @booking = booking.new
  end

  def create
    @booking = booking.new(booking_params)
    @booking.save
    redirect_to booking_path(@booking)
  end

  def edit
    @booking = booking.find(params[:id])
  end

  def update
    @booking = booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:title, :details, :completed)
  end

end
