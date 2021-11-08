class FavoriteRestaurantsController < ApplicationController
  before_action :authorize
  before_action :find_favorite_restaurant, only: %i[show update destroy]

  def index
    @favorite_restaurants = current_user.favorite_restaurants

    render json: @favorite_restaurants
  end

  def show
    render json: @favorite_restaurant
  end

  def create
    @favorite_restaurant = current_user.favorite_restaurants.build(favorite_restaurant_params)

    if @favorite_restaurant.save
      render json: @favorite_restaurant, status: :created
    else
      render json: @favorite_restaurant.errors, status: :unprocessable_entity
    end
  end

  def update
    if @favorite_restaurant.update(favorite_restaurant_params)
      render json: @favorite_restaurant
    else
      render json: @favorite_restaurant.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @favorite_restaurant.destroy
    render json: { message: 'Collection deleted' }, status: :ok
  end

  private

  def find_favorite_restaurant
    @favorite_restaurant = current_user.favorite_restaurants.find_by(id: params[:id])
    render json: { failure: "FavoriteRestaurant doesn't exist." }, status: :not_found unless @favorite_restaurant
  end

  def favorite_restaurant_params
    params.permit(collection_id, :restaurant_id)
  end
end
