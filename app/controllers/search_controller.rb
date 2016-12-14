class SearchController < ApplicationController

  def index

    @locations = Location.by_zip(params["q"])
byebug
    # response = Faraday.get( "http://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV["nrel_api_key"]}&location=80202&fuel_type=ELEC&LPG&offset=10")

    # data = JSON.parse(response.body)
    # @data = data["fuel_stations"]

    # location = Location.new
    #
    # location["name"] = data["fuel_stations"].first["station_name"]
    # location["addresss"] = data["fuel_stations"].first["street_address"]
    # location["fuel_type"] = data["fuel_stations"].first["fuel_type_code"]
    # location["distance"] = data["fuel_stations"].first["distance"]
    # location["access_times"] = data["fuel_stations"].first["access_days_times"]
    #
    # location.save

  end
end
