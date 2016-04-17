class BikePointTextSearch < BikeService

  @text_search_service = 'https://api-neon.tfl.gov.uk/BikePoint/Search'

  def self.search(query)
    self.get_request @text_search_service + '?query=' + query
  end

end