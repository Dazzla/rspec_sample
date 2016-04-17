class BikeService

  include RestClient

  def self.get_request(service_url)
    JSON.parse(RestClient::Request.execute(:method => :get, :url => service_url, :verify_ssl => false))
  end

end