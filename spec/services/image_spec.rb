require 'rails_helper'

RSpec.describe ImageService do
  describe 'class methods' do
    describe '.get_images' do
      it 'returns images based on search query', :vcr do
        images = ImageService.get_images('ocean')

        expect(images).to be_a Hash
        expect(images[:photos].size).to be <= 80

        image_data = images[:photos].first

        expect(images[:photos].first).to have_key(:id)
        expect(images[:photos].first[:id]).to be_an Integer

        expect(images[:photos].first).to have_key(:width)
        expect(images[:photos].first[:width]).to be_an Integer

        expect(images[:photos].first).to have_key(:height)
        expect(images[:photos].first[:height]).to be_an Integer

        expect(images[:photos].first).to have_key(:url)
        expect(images[:photos].first[:url]).to be_a String

        expect(images[:photos].first).to have_key(:photographer)
        expect(images[:photos].first[:photographer]).to be_a String

        expect(images[:photos].first).to have_key(:photographer_url)
        expect(images[:photos].first[:photographer_url]).to be_a String

        expect(images[:photos].first).to have_key(:photographer_id)
        expect(images[:photos].first[:photographer_id]).to be_an Integer

        expect(images[:photos].first).to have_key(:avg_color)
        expect(images[:photos].first[:avg_color]).to be_a String

        expect(images[:photos].first).to have_key(:src)
        expect(images[:photos].first[:src]).to be_a Hash
        expect(images[:photos].first[:src].count).to eq(8)

        expect(images[:photos].first[:src]).to have_key(:original)
        expect(images[:photos].first[:src][:original]).to be_a String

        expect(images[:photos].first[:src]).to have_key(:large2x)
        expect(images[:photos].first[:src][:large2x]).to be_a String

        expect(images[:photos].first[:src]).to have_key(:large)
        expect(images[:photos].first[:src][:large]).to be_a String

        expect(images[:photos].first[:src]).to have_key(:medium)
        expect(images[:photos].first[:src][:medium]).to be_a String

        expect(images[:photos].first[:src]).to have_key(:small)
        expect(images[:photos].first[:src][:small]).to be_a String

        expect(images[:photos].first[:src]).to have_key(:portrait)
        expect(images[:photos].first[:src][:portrait]).to be_a String

        expect(images[:photos].first[:src]).to have_key(:landscape)
        expect(images[:photos].first[:src][:landscape]).to be_a String

        expect(images[:photos].first[:src]).to have_key(:tiny)
        expect(images[:photos].first[:src][:tiny]).to be_a String
      end

      describe '.get_conn' do
        it 'returns a Faraday object' do
          conn = ImageService.get_conn

          expect(conn).to be_a Faraday::Connection
        end
      end
    end
  end
end
