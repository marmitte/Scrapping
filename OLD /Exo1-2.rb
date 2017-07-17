require 'rubygems'
require 'nokogiri'  
require 'open-uri'


def get_all_the_urls_of_val_doise_townhalls

page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html")) 

url = page.css(".lientxt").each do |element|
puts element["href"]
end
end 
get_all_the_urls_of_val_doise_townhalls()