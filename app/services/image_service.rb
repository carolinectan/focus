class ImageService
  def self.get_images(subject)
    response = get_conn.get('/v1/search') do |req|
      req.headers['Authorization'] = ENV['pexels_api_key']
      req.params['query'] = subject
      req.params['per_page'] = 80
    end

    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_conn
    Faraday.new('https://api.pexels.com')
  end
end
