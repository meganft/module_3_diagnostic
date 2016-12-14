class Location

  attr_reader :name, :address, :fuel_type, :distance, :access_times

  def initialize(attributes={})
    @name = attributes["fuel_station"].first["station_name"]
    @address = attributes["fuel_station"].first["street_address"]
    @fuel_type = attributes["fuel_station"].first["fuel_type_code"]
    @distance = attributes["fuel_station"].first["distance"]
    @access_times = attributes["fuel_station"].first["access_days_times"]
  end

  def self.by_zip(zip)
    service = NrelService.new
    service.get_nearest_fuel(zip).map do |location_info|
      Location.new(location_info)
    end
  end

end
