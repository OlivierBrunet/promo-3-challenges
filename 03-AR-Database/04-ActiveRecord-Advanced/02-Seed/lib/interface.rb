require_relative 'config/application'
require_relative 'models/post'
require_relative 'models/user'

# TODO: build your interface with login and CRUD tasks on the posts
def parsing
    PAGE_URL = 'https://news.ycombinator.com/'
    page = Nokogiri::HTML(open(PAGE_URL))

    page.search('.title').each do |element|
    puts "#{element.search('.title > a').inner_text}"
    end

    #name, source url, rating and creation date
    #doc.search('.m_search_result').each do |element|
    #puts "#{element.search('.title > a').inner_text}"
    #puts "Rating : #{element.search('.etoile1').size} / 5}"
end

parsing

