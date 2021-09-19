require 'rails_helper'

RSpec.describe 'welcome page', type: :feature do
  it 'has a button to go to the discover page' do
    visit root_path

    expect(page).to have_content('Focus')
    expect(page).to have_button('Discover Images')

    click_on 'Discover Images'

    expect(current_path).to eq(discover_index_path)
  end
end
