require 'rails_helper'

RSpec.describe 'images by photographer page', type: :feature do
  it 'displays images that have a similar photographer name' do
    visit '/discover'

    fill_in :subject, with: 'ocean'
    click_on 'Search'

    within '#image-id-189349' do
      click_on('Similar Images by Photographer')
    end

    expect(current_path).to eq('/images/by_photographer')
    expect(page).to have_content('Similar Images by Photographer Results')

    expect(page).to have_content('Searched for "Sebastian Voortman"')
    expect(page).to have_css('img', count: 40)
  end
end
