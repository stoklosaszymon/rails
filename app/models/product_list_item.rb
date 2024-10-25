class ProductListItem < ApplicationRecord
  belongs_to :product
  belongs_to :product_list
end