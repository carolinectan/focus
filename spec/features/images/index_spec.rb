require 'rails_helper'

RSpec.describe 'images index page', type: :feature do
  it 'displays images search results with up to max 80 results' do
    visit '/discover'

    fill_in :subject, with: 'ocean'
    click_on 'Search'

    expect(current_path).to eq('/images')
    expect(page).to have_content('Image Search Results')
    expect(page).to have_content('Searched for "ocean"')
    expect(page).to have_css('img', :count => 80)

    within '#image-id-189349' do
      expect(page).to have_css('img', :count => 1)
    end
  end
end
