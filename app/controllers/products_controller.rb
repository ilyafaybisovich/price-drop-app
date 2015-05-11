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
    amazon_id = find_amazon_id(sanitize_params[:url])
    product = product_from_amazon(amazon_id)
    hash = sanitize_params.merge({title: product[:title], price: product[:price]})
    @product = Product.create(hash)
    redirect_to '/'
  end

  def sanitize_params
    params.require(:product).permit(:url, :budget)
  end

  private

  def product_from_amazon(amazon_id)
    format_amazon_response(get_amazon_response(amazon_id))
  end

  def get_amazon_response amazon_id
    request = Vacuum.new('GB')
    request.associate_tag = 'pridro02-20'
    response = request.item_lookup(
      query: {'Condition'=>'New',
              'IdType'=>'ASIN',
              'ItemId'=>amazon_id,
              'Operation'=>'ItemLookup',
              'ResponseGroup'=>'ItemAttributes,OfferSummary'})
    response.to_h
  end

  def format_amazon_response(hashed_response)
    title = hashed_response['ItemLookupResponse']['Items']['Item']['ItemAttributes']['Title']
    price = hashed_response['ItemLookupResponse']['Items']['Item']['OfferSummary']['LowestNewPrice']['Amount']
    { title: title, price: price.to_i / 100.00 }
  end

end
