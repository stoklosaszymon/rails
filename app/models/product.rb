class Product < ApplicationRecord
    has_many :product_list_items
    has_many :product_lists, through: :product_list_items
    has_one :product_category
    belongs_to :user, optional: true
end