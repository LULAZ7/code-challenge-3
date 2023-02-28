require_relative '../config/environment'

puts Article.all
sam_wanjiru = Author.new("Sam Wanjiru")
puts "Author:#{Author.name}"

puts Magazine.all
# Create a magazine
magazine = Magazine.new("A day at a time", "Daily Nation")
puts "Magazine: #{magazine.category}"
puts "Articles name: #{magazine.name}"
#Author
sammy_ian = Author.new("Sam Wanjiru")
puts "Author:#{sammy_ian.name}"


# Create a magazine
magazine = Magazine.new("Kenya power price hike", "Business Daily")
puts "Magazine: #{magazine.category}"
puts "Articles name: #{magazine.name}"
#Author
samuel_mary = Author.new("Wanjiru")
puts "Author:#{samuel_mary.name}"



