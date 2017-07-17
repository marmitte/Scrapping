
require 'rubygems'
require 'nokogiri'  
require 'open-uri'


def get_the_email_of_a_townhal_from_its_webpage(url_ville)   
page = Nokogiri::HTML(open(url_ville))

moi = page.css(".style27 .Style22")
return  moi[5].text
end 


def get_all_the_urls_of_val_doise_townhalls 
	page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))

ville_mail= Hash.new
	tous_les_url = page.css(".lientxt")
	tous_les_url.each do |elements|

	stock_url_incomplete = elements["href"]
	stock_url_complete= "http://annuaire-des-mairies.com/" + stock_url_incomplete

	mail = get_the_email_of_a_townhal_from_its_webpage (stock_url_complete)
	ville_mail[elements.text] = mail 
	end 
puts ville_mail
end 

get_all_the_urls_of_val_doise_townhalls()





