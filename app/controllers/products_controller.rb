require 'vacuum'

class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    title = title_from_amazon('B0000256XN')
    hash = product_from_params.merge({title: title})
    @product = Product.create(hash)
    redirect_to '/'
  end

  def product_from_params
    params.require(:product).permit(:url, :budget)

  end

  private 

  def title_from_amazon asin
    request = Vacuum.new('GB')
    request.associate_tag = 'pridro02-20'
    response = request.item_lookup(query: {'Condition'=>'New','IdType'=>'ASIN','ItemId'=>asin,'Operation'=>'ItemLookup','ResponseGroup'=>'ItemAttributes,OfferSummary'})
    hashed_response = response.to_h
    hashed_response['ItemLookupResponse']['Items']['Item']['ItemAttributes']['Title']
  end

end
