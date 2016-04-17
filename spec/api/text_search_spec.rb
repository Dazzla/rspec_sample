describe BikePointTextSearch do

  describe 'Text Search' do

    before :all do
      @search_results = BikePointTextSearch.search 'lambeth'
    end

    it 'performs a text search' do
      @search_results.each do |point|
        expect(point['commonName']).to match /lambeth/i
      end
    end
  end

end