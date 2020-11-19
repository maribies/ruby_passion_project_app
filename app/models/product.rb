class Product < ApplicationRecord
  has_one :name
  has_one :designer
  has_one :price
  has_one :material
  has_one :dimension
  has_one :season
  has_one :collection
  has_one :category
  has_one :brand
  has_many :images
  has_many :stocks
  has_many :colors, through: :stocks
  has_many :quantities, through: :stocks
end
