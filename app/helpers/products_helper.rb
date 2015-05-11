module ProductsHelper

  def find_amazon_id(url)
    if /\/dp\/(.*)\// =~ url
      /\/dp\/(.*)\//.match(url)[1]
    elsif /\/product\/(.*)\// =~ url
      /\/product\/(.*)\//.match(url)[1]
    else
      logger.warn "FAILED TO PARSE AMAZON ID FROM: #{url}"
      fail 'no amazon id'
    end
  end

end
