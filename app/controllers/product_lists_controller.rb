class ProductListsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!

  def index
    lists = ProductList.where("user_id = ?", @current_user.id).as_json
    render json: lists
  end

  def show
    list = ProductList.find(params[:id])
    @products = list.product_list_items.map do |item|
      json = item.product.as_json
      json["status"] = item.status
      json["quantity"] = item.quantity
      json
    end
    render json: { name: list.name, products: @products}
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

  def update_name
    listItem = ProductList.find(params[:id])
    listItem.name = params[:new_name];
    listItem.save
    render json: listItem
  end

  def update_products
      list = ProductList.find(params[:id])
      product = {}
      params[:product_ids].each do |param| 
        product = ProductListItem.create({product_id: param, product_list_id: list.id })
      end
      render json: product.product
  end

  def duplicate
    list = ProductList.find(params[:list_id])
    list_count = ProductList.where("name LIKE :prefix", prefix: "#{list.name}%")
    new_list = ProductList.create(name: "#{list.name}(#{list_count.size})", user_id: @current_user.id);
    list.product_list_items.select { |i| i.status == 'to_buy' }.each do |item|
      ProductListItem.create({
        product_list_id: new_list.id,
        product_id: item.product_id,
        quantity: item.quantity,
        status: item.status
      })
    end
    render json: { list: new_list, products: new_list.products};
  end

  private

  def user_params
    params.require(:list).permit(:name, product_ids: [])
  end

  def user_params_with_user_id
    user_params.merge(user_id: @current_user.id)
  end
end
