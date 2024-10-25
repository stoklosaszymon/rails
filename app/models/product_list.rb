class ProductList < ApplicationRecord
  has_many :product_list_items
  has_many :products, through: :product_list_items
  accepts_nested_attributes_for :products
end