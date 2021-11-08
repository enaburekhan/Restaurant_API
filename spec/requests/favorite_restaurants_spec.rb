require 'rails_helper'

RSpec.describe 'FavoriteRestaurants', type: :request do
  before(:example) do
    @user = User.create(username: 'test_user', email: 'testuser@gmail.com', password: '1234')
    @favorite_restaurant = FavoriteRestaurant.create(
      collection_id: 1, restaurant_id: 1
    )
    token = JWT.encode({ user_id: @user.id }, Rails.application.secret_key_base)
    @headers = { Authorization: "Bearer #{token}" }
  end

  it 'shows all favorite_restaurants' do
    get '/api/v1/favorite_restaurants', headers: @headers
    expect(response).to have_http_status(:ok)
  end

  it 'displays favorite_restaurant information' do
    get "/api/v1/favorite_restaurants/#{@favorite_restaurant.id}", headers: @headers
    expect(response).to have_http_status(:ok)
  end
end
