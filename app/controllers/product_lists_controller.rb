class ProductListsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!

  def index
    lists = ProductList.where("user_id = ?", @current_user.id).as_json
    render json: lists
  end

  def show
    list = ProductList.find(params[:id])
    @products = list.product_list_items.map do |p|
      json = p.product.as_json
      json["status"] = p.status
      json
    end
    render json: { name: list.name, products: @products }
  end

  def create
    @list = ProductList.new(user_params_with_user_id)
    if @list.save
      render json: @list.as_json
    end
  end

  def remove
    list = ProductList.find(params[:list_id])
    product = Product.find(params[:product_id])
    if list.products.delete(product)
      render json: { message: 'deleted' }
    end
  end

  def destroy
    ProductList.find(params[:id]).destroy
    render json: { message: 'list deleted' }
  end

  def update
    listItem = ProductList.find(params[:id])
    listItem.name = params[:new_name];
    listItem.save
    render json: listItem
  end

  private

  def user_params
    params.require(:list).permit(:name, product_ids: [])
  end

  def user_params_with_user_id
    user_params.merge(user_id: @current_user.id)
  end
end
