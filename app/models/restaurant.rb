class Restaurant < ApplicationRecord
  require 'csv'
  require 'activerecord-import/base'
  require 'activerecord-import/active_record/adapters/postgresql_adapter'

  has_many :favorite_restaurants
  has_many :collections, through: :favorite_restaurants

  # validations
  validates_presence_of :name
  validates_presence_of :opening_date

  def self.csv_import
    new_empty_aaray = []
    CSV.foreach('lib/tasks/glints.csv', encoding: 'ISO-8859-1', liberal_parsing: true) do |row|
      #   puts row[1]
      new_empty_aaray << Restaurant.create!(name: row[0], opening_date: row[1])
    end
    Restaurant.import(new_empty_aaray)

    puts "There are now #{Restaurant.count} rows in the restaurants table"
  end
end
