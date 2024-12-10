class ProductsController < ApplicationController
  
    skip_before_action :verify_authenticity_token
    before_action :authenticate_user!

    def index
      #selected_category = params[:category]
      render json: Product.where(user_id: nil)
        .or(Product.where(user_id: @current_user.id))
        .order(name: :asc)
    end

    def show
      product = Product.find(params[:id])
      render json: product
    end

    def create 
      product = Product.new({name: params[:name]})
      product.user_id = @current_user.id
      product.unit = "piece"
      if product.save 
        render json: product
      end
    end

    def update
      product = Product.find(params[:id])
      product.name = params[:name]
      product.unit = params[:unit]
      product.save
      render json: product 
    end

    def destroy 
      product = Product.destroy(params[:id])
      render json: { message: "Deleted" }
    end
end
