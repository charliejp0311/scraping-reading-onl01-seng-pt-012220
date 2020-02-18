require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)
#puts doc.css(".headline-26OIBN").text.strip


courses = doc.css("#2a778efd-1685-5ec6-9e5a-0843d6a88b7b .'inlineMobileLeft-2Yo002 imageTextBlockGrid2-3jXtmC'")

courses.each do |course|
  puts course.text.strip
end
