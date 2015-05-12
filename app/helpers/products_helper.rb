module ProductsHelper

  def find_amazon_id(url)
    if /\/dp\/(.*)\// =~ url
      /\/dp\/(.*)\//.match(url)[1]
    elsif /\/product\/(.*)\// =~ url
      /\/product\/(.*)\//.match(url)[1]
    elsif /\/product\/(.*)[\?]/ =~ url
      /\/product\/(.*)[\?]/.match(url)[1]
    else
      logger.warn "FAILED TO PARSE AMAZON ID FROM: #{url}"
      fail 'no amazon id'
    end
  end

  def get_amazon_price amazon_id
    request = Vacuum.new('GB')
    request.associate_tag = 'pridro02-20'
    response = request.item_lookup(
      query: {'Condition'=>'New',
              'IdType'=>'ASIN',
              'ItemId'=>amazon_id,
              'Operation'=>'ItemLookup',
              'ResponseGroup'=>'OfferSummary'})
    response.to_h
  end

  def format_amazon_price_response(hashed_response)
    price = hashed_response['ItemLookupResponse']['Items']['Item']['OfferSummary']['LowestNewPrice']['Amount']
    price.to_i / 100.00
  end

end
