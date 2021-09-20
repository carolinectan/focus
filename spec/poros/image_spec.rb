require 'rails_helper'

RSpec.describe Image do
  it 'can initialize from image params' do
    image_params = {
      id: 189_349,
      width: 5760,
      height: 3840,
      url: 'https://www.pexels.com/photo/body-of-water-during-golden-hour-189349/',
      photographer: 'Sebastian Voortman',
      photographer_url: 'https://www.pexels.com/@sebastian',
      photographer_id: 44_106,
      avg_color: '#99775E',
      src: { original: 'https://images.pexels.com/photos/189349/pexels-photo-189349.jpeg',
             large2x: 'https://images.pexels.com/photos/189349/pexels-photo-189349.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
             large: 'https://images.pexels.com/photos/189349/pexels-photo-189349.jpeg?auto=compress&cs=tinysrgb&h=650&w=940',
             medium: 'https://images.pexels.com/photos/189349/pexels-photo-189349.jpeg?auto=compress&cs=tinysrgb&h=350',
             small: 'https://images.pexels.com/photos/189349/pexels-photo-189349.jpeg?auto=compress&cs=tinysrgb&h=130',
             portrait: 'https://images.pexels.com/photos/189349/pexels-photo-189349.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800',
             landscape: 'https://images.pexels.com/photos/189349/pexels-photo-189349.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200',
             tiny: 'https://images.pexels.com/photos/189349/pexels-photo-189349.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280' },
      liked: false
    }

    image = Image.new(image_params)

    expect(image).to be_an_instance_of Image
    expect(image.id).to eq(189_349)
    expect(image.url).to eq('https://images.pexels.com/photos/189349/pexels-photo-189349.jpeg?auto=compress&cs=tinysrgb&h=350')
    expect(image.title).to eq('body-of-water-during-golden-hour-189349')
    expect(image.photographer).to eq('Sebastian Voortman')
  end
end
