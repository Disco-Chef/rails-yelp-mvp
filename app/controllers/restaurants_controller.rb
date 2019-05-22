class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restuarant = Restaurant.all
  end

  def show
    find_restaurant
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new
    @restaurant.save
    redirect_to @restaurant
  end

  def edit
    find_restaurant
  end

  def update
    find_restaurant
    @restaurant.update(restaurant_params)
    redirect_to @restaurant
  end

  def destroy
    find_restaurant
    @restaurant.destroy
    redirect_to restaurants_path
  end
end
