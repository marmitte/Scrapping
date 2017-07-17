require 'rubygems'
require 'nokogiri'  
require 'open-uri'


def crypto
page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
noms_prix = Hash.new 
compteur = -1

a = page.css("td.no-wrap.currency-name > a")
b = page.css("td:nth-child(5) > a")

a.each do |element|	
compteur += 1
key = element.text
prix = b[compteur].text
noms_prix[key] = prix

end

puts noms_prix

end

crypto()

