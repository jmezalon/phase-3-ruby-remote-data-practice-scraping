require 'nokogiri'
require 'open-uri'

html = URI.open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)

partners = doc.css(".content-3OTK_R")

partners.each do |partner|
    puts partner.text.strip
end