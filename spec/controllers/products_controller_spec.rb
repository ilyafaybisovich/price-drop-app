require 'rails_helper'
require 'amazon_helper'

RSpec.describe ProductsController, type: :controller do

  include AmazonHelper

  it 'should return a hash from an amazon response' do

    expect( subject.send(:format_amazon_response, response)).to eq({ title: 'Portta Version 1.4 HDMI 3 Port 3x1 Switch Switcher with Pigtail Full 1080p 3D and 4Kx2K compatible 1.3', price: 0.31, image: 'http://ecx.images-amazon.com/images/I/31hqkd-zohL._SL160_.jpg'})

  end

end
