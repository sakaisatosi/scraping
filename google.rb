require 'nokogiri'
require 'open-uri'

uri = "http://www.google.com/search?q=wiki"
doc = Nokogiri::HTML(open(uri),nil,"utf-8")
doc.css("//title").each do |link|
#  puts link["href"]
  p link.text
end
