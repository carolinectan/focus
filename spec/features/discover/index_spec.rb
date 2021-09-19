require 'rails_helper'

RSpec.describe 'discover index page', type: :feature do
  it 'displays a form to search for images by term' do
    visit '/discover'

    expect(page).to have_content('Discover Images')

    fill_in :subject, with: 'ocean'
    click_on 'Search'

    expect(current_path).to eq('/images')
  end
end
