require 'rails_helper'

describe "Nrel service" do
  context "#get_nearest_fuel" do
    it "returns the nearest fuel stations when user enters location" do
      # VCR.use_cassette("get_nearest_fuel") do
        token = ENV["nrel_api_key"]
        nearest = NRelService.new(token).get_nearest_fuel
        expect(nearest).to be_a(Array)
      # end
    end
  end
end
