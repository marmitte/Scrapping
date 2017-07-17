#!/usr/bin/env ruby

require 'rubygems'
require 'nokogiri'  
require 'open-uri'



def get_the_email_of_a_townhal_from_its_webpage
page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/vaureal.html"))  
moi = page.css(".style27 .Style22")
puts moi[5].text
end

get_the_email_of_a_townhal_from_its_webpage
