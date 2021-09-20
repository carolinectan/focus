require 'rails_helper'

RSpec.describe 'images by title page', type: :feature do
  it 'displays images that have a similar title', :vcr do
    visit '/discover'

    fill_in :subject, with: 'ocean'
    click_on 'Search'

    within '#image-id-189349' do
      click_on('Similar Images by Image Title')
    end

    expect(current_path).to eq('/images/by_title')
    expect(page).to have_content('Similar Images by Image Title Results')

    expect(page).to have_content('Searched for "Body Of Water During Golden Hour 189349"')
    expect(page).to have_css('img', count: 80)
  end
end
