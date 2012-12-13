suburb-distance-calculator
==========================

Calculate the distance between every suburb in a provided csv file with suburb, latitude and longitude record

$ mysql -u root

-> create database `suburb-distances`;

-> exit

$ cd lib

$ ruby migratedb.rb

$ ruby import_suburb_data.rb

$ ruby populate_distances.rb
