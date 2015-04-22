# TO DO ...
# Create a class named Bookmark with the following:
#   An initializer that accepts url and title parameters:
#     it should set instance variables named url, title
#     it should set a read only variable named last_visited
#   A method named visit! which sets last_visited to the current time and date (hint: the Time.now method returns an instance of Time)
class Bookmark

  attr_accessor :url, :title
  attr_reader :last_visited

  def initialize(url, title)
    @url = url
    @title = title
    @last_visited
  end

  def visit!
    @last_visited = Time.now
  end

end



# Tests

test1 = Bookmark.new('http://www.amazon.com','Amazon')
puts "Bookmark 1 URL initialized to ... #{test1.url}"
test1.url = 'amazon.com'
puts "Bookmark 1 URL changed to ... #{test1.url}"

test2 = Bookmark.new('http://www.google.com','Google')
puts "Bookmark 2 title initialized to ... #{test2.title}"
test2.title = 'Google: My Favorite Search Engine'
puts "Bookmark 2 title changed to ... #{test2.title}"

test3 = Bookmark.new('http://www.github.com','GitHub')
puts "Bookmark 3 timestamp initialized to ... #{test3.last_visited}"
test3.visit!
puts "Bookmark 3 timestamp changed with visit! method to ... #{test3.last_visited}"
