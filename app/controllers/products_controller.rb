require 'vacuum'

class ProductsController < ApplicationController
  include ProductsHelper

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    product = product_from_amazon(find_amazon_id(product_from_params[:url]))
    hash = product_from_params.merge({title: product[:title], price: product[:price]})
    @product = Product.create(hash)
    redirect_to '/'
  end

  def product_from_params
    params.require(:product).permit(:url, :budget)
  end

  private 

  def product_from_amazon asin
    request = Vacuum.new('GB')
    request.associate_tag = 'pridro02-20'
    response = request.item_lookup(query: {'Condition'=>'New','IdType'=>'ASIN','ItemId'=>asin,'Operation'=>'ItemLookup','ResponseGroup'=>'ItemAttributes,OfferSummary'})
    hashed_response = response.to_h
    title = hashed_response['ItemLookupResponse']['Items']['Item']['ItemAttributes']['Title']
    price = hashed_response['ItemLookupResponse']['Items']['Item']['OfferSummary']['LowestNewPrice']['Amount'].to_i/100.00
    { title: title, price: price }
  end

end
