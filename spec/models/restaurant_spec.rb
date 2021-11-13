require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  # Association test
  it { should have_many(:favorite_restaurants) }
  it { should have_many(:collections).through(:favorite_restaurants) }

  # Validation tests
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:opening_date) }
end
