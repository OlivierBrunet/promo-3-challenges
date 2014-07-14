# Encoding: utf-8
require 'csv'

def most_successfull(number, max_year, file_name)
  #TODO: return the number most successfull movies max_year
csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
filepath    = '/lib/movies.csv'

CSV.foreach(filepath, csv_options) do |row|
  puts "#{row['file_name']}, a #{row['max_year']} movie - (id #{row['number']})"
end
