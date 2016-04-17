describe BikePointServiceEndPoint do

  describe 'Endpoint' do

    before :all do
      @endpoint = BikePointServiceEndPoint.endpoint
    end

    it 'is Enumerable' do
      expect(@endpoint).to respond_to(:each)
    end

    it 'is longer than one element' do
      expect(@endpoint.count).to be > 1
    end

  end

end
