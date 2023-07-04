require_relative 'collection'
require_relative 'iterator'

# The client code may or may not know about the Concrete Iterator or Collection classes,
# depending on the level of indirection you want to keep in your program.
collection = WordsCollection.new
collection.add_item('First')
collection.add_item('Second')
collection.add_item('Third')

puts 'Straight traversal:'
collection.iterator.each { |item| puts item }
puts ''

puts 'Reverse traversal:'
collection.reverse_iterator.each { |item| puts item }
