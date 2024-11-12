class ProductListItemsController < ApplicationController

  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!

  def update
    listItem = ProductList.find(params[:list_id])
      .product_list_items.where({product_id: params[:product_id]}).first
    listItem.status = listItem.status == 'to_buy' ? 'bought' : 'to_buy'
    listItem.save
    render json: listItem
  end
end