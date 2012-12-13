suburb-distance-calculator
==========================

Calculate the distance between every suburb in Australia

$ mysql -u root

-> create database `suburb-distances`;
-> exit

$ cd lib
$ ruby migratedb.rb

$ ruby import_suburb_data.rb
