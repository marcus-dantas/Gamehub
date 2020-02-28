class ReviewsController < ApplicationController
  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    @review.user = current_user
    if @review.save
      redirect_to game_path(@booking.game)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :content, :rating)
  end
end
