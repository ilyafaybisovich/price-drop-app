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
    fill_in 'Url', with: 'http://www.amazon.co.uk/gp/product/B0000256XN/ref=s9_simh_gw_p15_d0_i1?pf_rd_m=A3P5ROKL5A1OLE&pf_rd_s=center-2&pf_rd_r=1MKFKHJ4EVKVPTNDSJ75&pf_rd_t=101&pf_rd_p=455344027&pf_rd_i=468294'
    fill_in 'Budget', with: 0.80
    click_button 'Watch item'
    expect(current_path).to eq '/'
    expect(page).to have_content 'http://www.amazon.co.uk/gp/product/B0000256XN/ref=s9_simh_gw_p15_d0_i1?pf_rd_m=A3P5ROKL5A1OLE&pf_rd_s=center-2&pf_rd_r=1MKFKHJ4EVKVPTNDSJ75&pf_rd_t=101&pf_rd_p=455344027&pf_rd_i=468294'
    expect(page).to have_content '0.80'
  end

  scenario 'can display Amazon item\'s title' do
    visit '/'
    click_button 'Watch new item'
    fill_in 'Url', with: 'http://www.amazon.co.uk/gp/product/B0000256XN/ref=s9_simh_gw_p15_d0_i1?pf_rd_m=A3P5ROKL5A1OLE&pf_rd_s=center-2&pf_rd_r=1MKFKHJ4EVKVPTNDSJ75&pf_rd_t=101&pf_rd_p=455344027&pf_rd_i=468294'
    fill_in 'Budget', with: 0.80
    click_button 'Watch item'
    expect(current_path).to eq '/'
    expect(page).to have_content 'Big Willie Style'
  end

  scenario 'can display Amazon item\'s price' do
    visit '/'
    click_button 'Watch new item'
    fill_in 'Url', with: 'http://www.amazon.co.uk/gp/product/B0000256XN/ref=s9_simh_gw_p15_d0_i1?pf_rd_m=A3P5ROKL5A1OLE&pf_rd_s=center-2&pf_rd_r=1MKFKHJ4EVKVPTNDSJ75&pf_rd_t=101&pf_rd_p=455344027&pf_rd_i=468294'
    fill_in 'Budget', with: 0.80
    click_button 'Watch item'
    expect(current_path).to eq '/'
    expect(page).to have_content '0.98'
  end
end