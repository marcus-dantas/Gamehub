class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def edit
    @booking = booking.find(params[:id])
    @booking.update(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  end
  private
  def booking_params
    params.require(:booking).permit(:id, :duration, :user_id, :game_id)
  end
end
