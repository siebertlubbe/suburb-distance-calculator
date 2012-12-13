require "rubygems"
require "bundler/setup"

require "active_record"
Dir["models/*.rb"].each {|file| require file }
require "csv"

require 'dbconnect'
