require 'rubygems'
require 'nokogiri'  
require 'open-uri'

page = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/HTML"))   

Moi = page.css ("table.infobox th")
Moi.each do |elements|
puts elements.text
end









#links = page.css ("div#references a")
#links.each{|link| puts "#{link.text}\t#{link['href']}"} 



#<a href="http://www.google.com">Click here</a>
#<a href="http://www.bing.com">click here to go</a>
#<a href="http://learnpythonthehardway.org/">Zed Shaw's Learn Python the Hard Way</a>
