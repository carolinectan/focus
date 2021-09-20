require 'rails_helper'

RSpec.describe ImageFacade do
  describe 'class methods' do
    describe '.find_images' do
      it 'returns an array of images', :vcr do
        query = 'ocean'
        images = ImageFacade.find_images(query)

        expect(images).to be_an Array
        expect(images.first).to be_a Image
        expect(images.size).to eq(80)
      end
    end
  end
end
