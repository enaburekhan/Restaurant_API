require 'rails_helper'

RSpec.describe FavoriteRestaurant, type: :model do
  # Association test
  it { should have_many(:restaurants) }
  it { should have_many(:collections) }
end
