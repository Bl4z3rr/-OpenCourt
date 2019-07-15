class BookingsController < ApplicationController
  def index
    @user = current_user
    @bookings = Booking.where(user: @user)
    @games = Game.where(user: @user)
  end

  def show
    @user = current_user
    @booking = Booking.find(params[:id])
  end
end
