require 'rails_helper'

describe "Nrel service" do
  context "#get_nearest_fuel" do
    it "returns the nearest fuel stations when user enters location" do
      VCR.use_cassette("get_nearest_fuel") do

        token = ENV["nrel_api_key"]
        zip = "80202"
        nearest = NrelService.new.get_nearest_fuel(zip)

        expect(nearest).to be_a(Array)
        expect(nearest.first).to have_key("station_name")
      end
    end
  end
end
