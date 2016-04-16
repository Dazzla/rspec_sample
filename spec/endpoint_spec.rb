require_relative '../bike_point_service'

describe BikePointService do

  describe 'Endpoint' do

    before :all do
      @endpoint = BikePointService.endpoint
    end

    it 'is Enumerable' do
      expect(@endpoint).to respond_to(:each)
    end

    it 'is longer than one element' do
      expect(@endpoint.count).to be > 1
    end

  end

end
