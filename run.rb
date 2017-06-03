#!/usr/bin/env ruby

require 'csv'
require 'pry'
require 'pry-nav'
require 'google-maps'

data = CSV.read("paroxoi.csv")
js_data = File.open("data.js", "w")

# Make sure you set this to your own key
# More here:
# https://developers.google.com/maps/documentation/javascript/
Google::Maps.api_key = ENV["GOOGLE_API_KEY"]

places = []
data.shift # drop the headers
data.map do |d|
  begin
    search_string = "#{d[4]}, #{d[10]}"
    #place = Google::Maps::Place.find(search_string)[0]
    #details = Google::Maps::PlaceDetails.find(place.place_id)
    geodata = Google::Maps.geocode(search_string)[0]
    if geodata
      places << {name: search_string, latitude: geodata.latitude, longitude: geodata.longitude}
    end
  rescue Exception => e
    puts e.message
  end
end

js_data.write("data = #{places.to_json}")
js_data.close
