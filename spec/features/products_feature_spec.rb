require 'rails_helper'

feature 'products' do
  scenario 'before any products have been added' do
    visit '/'
    expect(page).to have_content 'Amazong Deal'
    expect(page).to have_content 'Getting you a great deal'
  end

  scenario 'can add Amazon link and a budget and view the item on the homepage' do
    visit '/'
    click_button 'Watch new item'
    fill_in 'Url', with: 'http://www.amazon.co.uk/Big-Willie-Style-Will-Smith/dp/B0000256XN'
    fill_in 'Budget', with: 0.80
    click_button 'Watch item'
    expect(current_path).to eq '/'
    expect(page).to have_content 'http://www.amazon.co.uk/Big-Willie-Style-Will-Smith/dp/B0000256XN'
  end
end