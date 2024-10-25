class ProductCategoriesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!
  def index
    render json: ProductCategory.all
  end
end
