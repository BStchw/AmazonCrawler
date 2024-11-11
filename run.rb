require 'httparty'
require 'nokogiri'

url = "https://example.com"
response = HTTParty.get(url)
parsed_page = Nokogiri::HTML(response.body)

title = parsed_page.css('title').text
puts "Title: #{title}"
