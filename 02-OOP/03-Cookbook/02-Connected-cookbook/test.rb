#SCRAPING
require 'nokogiri'
require 'open-uri'

title = []
rating = []

response = open("http://www.marmiton.org/recettes/recherche.aspx?aqt=fraise")
puts response.inspect

doc = Nokogiri::HTML(File.open('marmiton.html'))
doc.search('.m_search_result').each do |element|
    title << "#{element.search('.m_search_titre_recette > a').inner_text}"
    rating << "Rating : #{element.search('.etoile1').size} / 5"
end

p title
p rating