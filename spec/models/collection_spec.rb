require 'rails_helper'

RSpec.describe Collection, type: :model do
  # Association test
  it { should belong_to(:user) }
  it { should has_and_belongs_to_many(:favorite_restaurants) }

  # Validation tests
  it { should validate_presence_of(:vegetarian_favorites) }
  it { should validate_presence_of(:meat_lovers) }
end