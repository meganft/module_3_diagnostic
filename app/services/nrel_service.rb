class NrelService

  def initialize

  end

  def get_nearest_fuel(zip)
    @response = Faraday.get( "http://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV["nrel_api_key"]}&location=#{zip}&fuel_type=ELEC&LPG&offset=10")
    # @response = result["fuel_stations"]
    JSON.parse(@response.body)["fuel_stations"]
    byebug
  end
end
