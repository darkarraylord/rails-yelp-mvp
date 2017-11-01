class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:new, :create ]
  def index
    @reviews = Review.all
    @review = Review.new
  end

  def show

  end

  def new
  end

  def create
    @review.restaurant = set_restaurant
    @review.save
  end

  private

  def review_param
    params.require(:review).permit(:content)
  end

  def set_review
    @review = Review.find(params[:id])
  end
  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
