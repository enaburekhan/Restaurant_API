require 'rails_helper'

RSpec.describe 'Restaurants', type: :request do
  before(:example) do
    @restaurant = Restaurant.create(name: 'Kushi Tsuru', opening_date: 'Mon-Sun 11:30 am - 9 pm')
  end

  it 'shows all restaurants' do
    get '/api/v1/restaurants'
    expect(response).to have_http_status(:ok)
  end

  it 'displays restaurant information' do
    get "/api/v1/restaurants/#{@restaurant.id}"
    expect(response).to have_http_status(:ok)
  end
end
