class Image
  attr_reader :id, :url
  
  def initialize(info)
    @id = info[:id]
    @url = info[:url]
  end
end
