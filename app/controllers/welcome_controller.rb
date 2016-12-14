class WelcomeController < ApplicationController
  def index


    response = Faraday.get( "http://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=#{END["nrel_api_key"]}qO&location=80202
")

  #add in interpolated api key and locaiton

  end
end
