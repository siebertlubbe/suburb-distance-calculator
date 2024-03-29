require 'environment'

file = File.open( '../data/melbourne-area-suburb-geo.csv' )
CSV::Reader.create( file ).each do |row|
  row[0] =~ /POINT\((\d+\.\d+) (-?\d+\.\d+)\)/
  latitude = $2
  longitude = $1
  name = row[2].gsub(" (Vic.)", "")
  Suburb.create(:name => name, :state => 'VIC', :latitude => latitude, :longitude => longitude)
end
