class Location

  attr_reader :name, :address, :fuel_type, :distance, :access_times

  def initialize(attributes={})
    @name = attributes["station_name"]
    @address = attributes["street_address"]
    @fuel_type = attributes["fuel_type_code"]
    @distance = attributes["distance"]
    @access_times = attributes["access_days_times"]
  end

  def self.by_zip(zip)
    service = NrelService.new
    service.get_nearest_fuel(zip).map do |location_info|
      Location.new(location_info)
    end
  end

end
