class Product < ApplicationRecord
    has_many :product_list_items
    has_many :product_lists, through: :product_list_items
    has_one :product_category

    validates :name, uniqueness: true
end