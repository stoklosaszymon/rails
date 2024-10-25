class ProductsController < ApplicationController
  
    before_action :authenticate_user!

    def index
      selected_category = params[:category]
      render json: selected_category.nil? ? Product.all.order(name: :asc) :
      Product.where("product_category_id = ?", selected_category).order(name: :asc)
    end
end
