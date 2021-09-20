class ImageFacade
  def self.find_images(query)
    json = ImageService.get_images(query)

    json[:photos].map do |info|
      Image.new(info)
    end
  end
end
