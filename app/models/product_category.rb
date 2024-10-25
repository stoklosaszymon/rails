class ProductCategory < ApplicationRecord
  validates :name, uniqueness: true
  has_many :product
end