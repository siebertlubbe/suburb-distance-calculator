require 'environment'

suburbs = Suburb.all

suburbs.each do |from_suburb|
  suburbs.each do |to_suburb|
    distance = GeoDistance.distance(from_suburb.latitude, from_suburb.longitude, to_suburb.latitude, to_suburb.longitude)
    Distance.create(:from_suburb => from_suburb.name, :from_state => from_suburb.state,
                          :to_suburb => to_suburb.name, :to_suburb => to_suburb.state, 
                          :distance => distance)
  end
end

