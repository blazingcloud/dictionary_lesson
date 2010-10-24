require "data/names.rb"
require "dictionary"
d = Dictionary.new

$names.each do |name|
  d.add name.downcase
end

prefix = ""
puts "Enter a prefix:"
prefix = gets.chomp 
puts "prefix '#{prefix}' matches"

result = d.find(prefix.downcase)
puts result.inspect
result.each do |word|
  puts word.capitalize
end
