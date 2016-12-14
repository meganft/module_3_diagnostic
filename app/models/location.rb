class Location

  def initialize(attributes={})
    @name = attributes["station_name"]
    @address = attributes["street_address"]
    @fuel_type = attributes["fuel_type_code"]
    @distance = attributes["distance"]
    @access_times = attributes["access_days_times"]
  end

  def self.by_location(token)
    service = NRelService.new(token)
    service.get_nearest_fuel.map do |location_info|
      Location.new(location_info)
    end
  end

end
