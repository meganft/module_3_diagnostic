class SearchController < ApplicationController
  def index
    response = Faraday.get( "http://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV["nrel_api_key"]}&location=80202&fuel_type=ELEC&LPG&offset=10")

    data = JSON.parse(response.body)
    result = {}

    result["name"] = data["fuel_stations"].first["station_name"]
    result["addresss"] = data["fuel_stations"].first["street_address"]
    result["fuel_type"] = data["fuel_stations"].first["fuel_type_code"]
    result["distance"] = data["fuel_stations"].first["distance"]
    result["access_times"] = data["fuel_stations"].first["access_days_times"]

    @result
  end
end
