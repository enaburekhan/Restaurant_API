require 'rails_helper'

RSpec.describe Collection, type: :model do
  # Association test
  it { should belong_to(:user) }
  it { should have_many(:favorite_restaurants) }
  it { should have_many(:restaurants).through(:favorite_restaurants) }

  # Validation tests
  it { should validate_presence_of(:restaurant_type) }
end
