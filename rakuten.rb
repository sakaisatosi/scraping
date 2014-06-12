require 'nokogiri'
require 'open-uri'

uri = "http://websearch.rakuten.co.jp/Web?qt=wiki&col=OW&svx=101210&ref=top"
doc = Nokogiri::HTML(open(uri),nil,"utf-8")
doc.css("a.os-window").each do |link|
#  puts link["href"]
#  p link["href"]
  a_url = link["href"]
  a_doc = Nokogiri::HTML(open(a_url),nil,"utf-8")
#  p a_doc
  a_doc.xpath('//title').each do |node|
    p node.text
  end
end
