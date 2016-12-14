require 'rails_helper'

describe "Nrel service" do
  context "#get_nearest_fuel" do
    it "returns the nearest fuel stations when user enters location" do
      VCR.use_cassette("get_nearest_fuel") do

        # response = Faraday.get( "http://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV["nrel_api_key"]}&location=80202&fuel_type=ELEC&LPG&offset=10")
        # nearest = JSON.parse(response.body)
        token = ENV["nrel_api_key"]
        nearest = NrelService.new.get_nearest_fuel
        expect(nearest).to be_a(Hash)

      end
    end
  end
end
