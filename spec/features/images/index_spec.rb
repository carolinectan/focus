require 'rails_helper'

RSpec.describe 'images index page', type: :feature do
  it 'displays images search results' do
    visit '/discover'

    fill_in :subject, with: 'ocean'
    click_on 'Search'

    expect(current_path).to eq('/images')
    expect(page).to have_content('Image Results')
  end
end
