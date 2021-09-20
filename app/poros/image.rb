class Image
  attr_reader :id, :url, :title, :photographer

  def initialize(info)
    @id = info[:id]
    @url = info[:src][:medium]
    @title = info[:url].sub('https://www.pexels.com/photo/', '').sub('/', '')
    @photographer = info[:photographer]
  end
end
