class AddProductList < ActiveRecord::Migration[7.2]
  def change
  
    create_table :product_categories do |t|
      t.string :name
    end
    
    create_enum :units, ["kg", "g", "piece", "l", "ml"]

    create_table :products do |t|
        t.string :name
        t.enum :unit, enum_type: "units"
        t.belongs_to :product_category, index: true, foreign_key: true
        t.belongs_to :user
    end

    create_table :product_lists do |t|
        t.string :name
        t.belongs_to :user, index: true, foreign_key: true
    end

    create_enum :status, ["bought", "to_buy"]

    create_table :product_list_items do |t|
        t.belongs_to :product
        t.belongs_to :product_list
        t.enum :status, enum_type: "status", default: "to_buy", null: false
        t.float :quantity, default: 1
    end

  end
end
