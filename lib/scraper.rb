require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)
#puts doc.css(".headline-26OIBN").text.strip


courses = doc.css(".gridContainer-EnvccM .title-oE5vT4")

courses.each do |course|
  puts course.text.strip
end

p doc.css(".gridContainer-EnvccM .title-oE5vT4")[0].children
