require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.google.com/search?q=tenderlove'))
#p doc
doc.css('h3.r a.l').each do |link|
p link.content
end
