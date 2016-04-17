require 'rest-client'

class BikePointServiceEndPoint < BikeService

  @service_endpoint = 'http://api.tfl.gov.uk/BikePoint'

  def self.endpoint
    self.get_request @service_endpoint
  end

end