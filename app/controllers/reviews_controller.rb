class ReviewsController < ApplicationController
  before_action :set_res

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save # this line will (1) check AND (2) save if valid!
      redirect_to restaurant_path(@restaurant)
    else
      render :new # if invalid, then retain entered information on the page
    end
  end

  private

  def set_res
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
