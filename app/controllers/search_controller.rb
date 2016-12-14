class SearchController < ApplicationController
  def index
    response = Faraday.get( "http://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV["nrel_api_key"]}&location=80202&fuel_type=ELEC&LPG&offset=10
")

    data = JSON.parse(response.body)
    @result = data["fuel_stations"].first["station_name"]
byebug
  end
end
