require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ProductsHelper. For example:
#
# describe ProductsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ProductsHelper, type: :helper do

  it "finds the product id from a simple amazon url" do
    expect(helper.find_amazon_id('http://www.amazon.co.uk/Greatest-Hits-Will-Smith/dp/B00007B5VK/')).to eq 'B00007B5VK'
  end

  it "finds the product id from a more complex amazon url" do
    expect(helper.find_amazon_id('http://www.amazon.co.uk/Web-Design-HTML-JavaScript-jQuery/dp/1118907442/ref=asap_bc?ie=UTF8')).to eq '1118907442'
  end

  it "finds the product id from a url with many numbers" do
    expect(helper.find_amazon_id('http://www.amazon.co.uk/Invicta-Chronograph-Display-Stainless-6983/dp/B003KRP0P0/ref=lp_6441784031_1_1?s=watch&ie=UTF8&qid=1431357779&sr=1-1')).to eq 'B003KRP0P0'
  end

  it "matches complex urls not following regular format" do
    expect(helper.find_amazon_id('http://www.amazon.co.uk/gp/product/B00KY0JHZU/ref=s9_hps_bw_g199_i2?pf_rd_m=A3P5ROKL5A1OLE&pf_rd_s=merchandised-search-4&pf_rd_r=1FBZTDZ0SGHFN388DMH9&pf_rd_t=101&pf_rd_p=477847347&pf_rd_i=471541031')).to eq 'B00KY0JHZU'
  end

  it "throws error when url does not match" do
    expect { helper.find_amazon_id('http://www.amazon.co.uk/Greatest-Hits-Will-Smith/dp/') }.to raise_error 'no amazon id'
  end

  it "logs url for admin if does not match" do
    expect(Rails.logger).to receive(:warn).with("FAILED TO PARSE AMAZON ID FROM: http://www.amazon.co.uk/Greatest-Hits-Will-Smith/dp/")
    expect { helper.find_amazon_id('http://www.amazon.co.uk/Greatest-Hits-Will-Smith/dp/') }.to raise_error 'no amazon id'
  end
end
