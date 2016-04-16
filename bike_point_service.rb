require 'rest-client'

class BikePointService
  include RestClient

  @service_endpoint = 'http://api.tfl.gov.uk/BikePoint'
  @all_bikepoints_service = 'https://api-neon.tfl.gov.uk/BikePoint'
  @text_search_service = 'https://api-neon.tfl.gov.uk/BikePoint/Search'

  TEST_BIKE_POINT_ID = 'BikePoints_1'

  def self.endpoint
    self.get_request @service_endpoint
  end

  def self.bike_points
    self.get_request @all_bikepoints_service
  end

  def self.bike_point(id = TEST_BIKE_POINT_ID)
    self.get_request @all_bikepoints_service/id
  end

  def self.search(query)
    self.get_request @text_search_service + '?query=' + query
  end

  def self.get_request(service_url)
    JSON.parse(RestClient::Request.execute(:method => :get, :url => service_url, :verify_ssl => false))
  end

end