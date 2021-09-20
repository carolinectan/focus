require 'rails_helper'

RSpec.describe 'images index page', type: :feature do
  it 'displays images search results with up to max 80 results', :vcr do
    visit '/discover'

    fill_in :subject, with: 'ocean'
    click_on 'Search'

    expect(current_path).to eq('/images')
    expect(page).to have_content('Image Search Results')
    expect(page).to have_content('Searched for "ocean"')
    expect(page).to have_css('img', count: 80)
  end

  it 'displays buttons to search for images by title or photographer', :vcr do
    visit '/discover'

    fill_in :subject, with: 'ocean'
    click_on 'Search'

    within '#image-id-189349' do
      expect(page).to have_css('img', count: 1)
      expect(page).to have_content('"Body Of Water During Golden Hour 189349" by Sebastian Voortman')
      expect(page).to_not have_content('"Landscape Photograph Of Body Of Water 1001682" by Kellie Churchman')
      expect(page).to have_button('Similar Images by Image Title')
      expect(page).to have_button('Similar Images by Photographer')
    end
  end
end
