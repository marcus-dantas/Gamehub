class ReviewsController < ApplicationController
  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect_to booking_path(@booking)
    else
      render booking_path
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :content)
  end
end
