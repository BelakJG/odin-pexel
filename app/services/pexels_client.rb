class PexelsClient
  include HTTParty
  base_uri "https://api.pexels.com/v1/"
  headers "Authorization" => ENV["PEXELS_API_KEY"]

  def collection(id)
    self.class.get("/collections/#{id}")
  end
end
