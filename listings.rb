
require 'open-uri'
require 'nokogiri'

url = "http://toronto.en.craigslist.ca/apa/"


data = Nokogiri::HTML(open(url))
listings = data.css('.row')

# using text.strip turns this object into a string. do not use. 
listings.each do |listing|
	puts 
	puts "Listed on: " + data.css('h4').text
	puts "Location:" + listing.css('small').text
	puts "Description: " + listing.css('.pl').text
  puts "Price: " + listing.css('.price').text
  puts "Pictures/Map Available: " + listing.css('.px').text
end

 