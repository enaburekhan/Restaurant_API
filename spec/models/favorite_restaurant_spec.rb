require 'rails_helper'

RSpec.describe FavoriteRestaurant, type: :model do
  # Association test
  it { should belong_to(:restaurant) }
  it { should belong_to(:collection) }
end
