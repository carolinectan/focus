class ImageFacade
  def self.find_images(subject)
    json = ImageService.get_images(subject)

    json[:photos].map do |info|
      Image.new(info)
    end
  end
end
