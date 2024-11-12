class ProductsController < ApplicationController
  
    skip_before_action :verify_authenticity_token
    before_action :authenticate_user!

    def index
      selected_category = params[:category]
      render json: selected_category.nil? ? Product.all.order(name: :asc) :
      Product.where("product_category_id = ?", selected_category).order(name: :asc)
    end

    def create 
      product = Product.new({name: params[:name]})
      if product.save 
        render json: product
      end
    end

    def destroy 
      product = Product.destroy(params[:id])
      render json: { message: "Deleted" }
    end
end
