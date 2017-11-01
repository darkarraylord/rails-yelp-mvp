class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy, :chef ]
  def index
    @restaurants = Restaurant.all
    @restaurant = Restaurant.new
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    Restaurant.create(restaurant_params)
    redirect_to restaurants_index_path
  end

  def edit
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(id: params[:id])
  end

  def destroy
  end

  def top
    #@restaurants = Restaurant.where(stars: 3)
  end

  def chef
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])

  end
end
