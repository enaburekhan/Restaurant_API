class Restaurant < ApplicationRecord
  require 'csv'

  has_many :favorite_restaurants
  has_many :collections, through: :favorite_restaurants

  # validations
  validates_presence_of :name
  validates_presence_of :opening_date

  def self.csv_import
    CSV.foreach('lib/tasks/glints.csv', encoding: 'ISO-8859-1', liberal_parsing: true) do |row|
      Restaurant.create!(name: row[0], opening_date: row[1])
    end
  end
end
