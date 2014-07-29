require_relative '../config/application'
require_relative '../models/post'
require_relative '../models/user'

require 'faker'
require 'nokogiri'
require 'open-uri'

puts 'Seeding database...'

# TODO: Your code goes here
# 1. create fake users
10.times do User.create(
  name:                   Faker::Name.name,
  email:                  Faker::Internet.email,
  )
end

posts = {}
ratings = []

html_doc = Nokogiri::HTML(open("https://news.ycombinator.com/"))

def parsing

 html_doc.search('table table tr td.title a').each do |element|
  next if element.inner_text == 'More'
  posts[element.inner_text] = element.xpath('@href').first.value
end

html_doc.search('table table tr td.subtext').each do |element|
  ratings << (element.search('span').inner_text[0].to_i || 0)
end

end

p posts
p ratings


# 2. Scrape news from https://news.ycombinator.com/ and associate posts to your existing users
