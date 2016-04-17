class GetBikePointsService < BikeService

  @all_bike_points_service = 'https://api-neon.tfl.gov.uk/BikePoint'
  TEST_BIKE_POINT_ID = 'BikePoints_1'

  def self.bike_points
    self.get_request @all_bike_points_service
  end

  def self.bike_point(id = TEST_BIKE_POINT_ID)
    self.get_request @all_bike_points_service/id
  end

end