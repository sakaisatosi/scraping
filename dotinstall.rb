require 'nokogiri'
require 'open-uri'

uri = "http://dotinstall.com/lessons/basic_php_beginner/6831"
doc = Nokogiri::HTML(open(uri),nil,"utf-8")
doc.css("textarea.for_source_copy sourcePre").each do |texta|
	p texta.text
	p "あああ"
#  puts link["href"]
#  p link["href"]
#  a_url = link["href"]
#  a_doc = Nokogiri::HTML(open(a_url),nil,"utf-8")
#  p a_doc
#  a_doc.xpath('//title').each do |node|
#    p node.text
#  end
end
