require_relative '../bike_point_service'

describe BikePointService do

  describe 'Bike Points' do

    before :all do
      @bike_points = BikePointService.bike_points
    end

    it 'has a Place Entity' do
      @bike_points.each do |point|
        expect(point['$type']).to match /Tfl.Api.Presentation.Entities.Place/
      end
    end

    it 'has a Bikepoint ID' do
      @bike_points.each do |point|
        expect(point['id']).to match /BikePoints_\d+/
      end
    end

    it 'has a commonName' do
      @bike_points.each do |point|
        expect(point.has_key?('commonName')).to be true
      end
    end

    it 'has a placeType of "BikePoint"' do
      @bike_points.each do |point|
        expect(point['placeType']).to eq 'BikePoint'
      end
    end

    it 'has additional properties' do
      @bike_points.each do |point|
        expect(point['additionalProperties'].length).to eq 9
      end
    end
  end

end