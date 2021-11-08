require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  # Association test
  it { should has_and_belongs_to_many(:favorite_restaurants) }

  # Validation tests
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:opening_date) }
end
