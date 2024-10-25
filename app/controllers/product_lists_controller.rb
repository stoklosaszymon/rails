class ProductListsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!
  def index
    lists = ProductList.where("user_id = ?", @current_user.id).as_json
    render json: lists
  end

  def show
    productList = ProductList.find(params[:id])
    render json: { name: productList.name, products: productList.products }
  end

  def create
    @list = ProductList.new(user_params_with_user_id)
    if @list.save
      render json: @list.as_json
    end
  end

  private

  def user_params
    params.require(:list).permit(:name, product_ids: [])
  end

  def user_params_with_user_id
    user_params.merge(user_id: @current_user.id)
  end
end
