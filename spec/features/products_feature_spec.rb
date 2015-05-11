require 'rails_helper'

feature 'products' do
  scenario 'before any products have been added' do
    visit '/'
    expect(page).to have_content 'Amazong Deal'
    expect(page).to have_content 'Getting you a great deal'
  end
end