class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_from_params)
    redirect_to '/'
  end

  def product_from_params
    params.require(:product).permit(:url, :budget)
  end

end
