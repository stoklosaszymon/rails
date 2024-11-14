class ProductListItem < ApplicationRecord
  belongs_to :product
  belongs_to :product_list
  
  validates_uniqueness_of :product_id, :scope => :product_list_id
end