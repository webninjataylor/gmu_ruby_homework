# Return a reversed copy of the array
def reverse(an_array)
  an_array.reverse
end

# Return a map of letters and counts of letters
# Letters should be lowercase before counting
# For example, histogram('Hello') returns {'h'=>1,'e'=>1,'l'=>2,'o'=>1}
def histogram(a_string)
  a_string.gsub!(/\s+/, "")
  a_array = a_string.downcase.split("")
  letters = Hash.new(0)
  a_array.each do |letter|
    letters[letter] += 1
  end
  return letters
end

# Sum all the numbers in the array
# an_array can contain lots of different things
# Be sure to only sum the numbers
# (Hint: the is_a? method might be useful here)
def sum_only_numbers(an_array)
  sum = 0
  an_array.each do |item|
    item.is_a?(Integer) ? sum += item : sum
  end
  return sum
end

# For i from 1 to 100, return an array.
# The elements in the array should follow this algorithm:
# If i is a multiple of 3, the element is 'Fizz'
# If i is a multiple of 5, the element is 'Buzz'
# If i is a multiple of 3 and 5, the element is 'FizzBuzz'
# Otherwise, the element is simply the value of i
# For example [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', ..., 14, 'FizzBuzz', ...]
def fizzbuzz
  zz_array = []
  1.upto(100) do |num|
    if num % 3 == 0 && num % 5 == 0
      zz_array << 'FizzBuzz'
    elsif num % 3 == 0
      zz_array << 'Fizz'
    elsif num % 5 == 0
      zz_array << 'Buzz'
    else
      zz_array << num
    end
  end
  return zz_array
end

# Uncomment a line to test the function you are developing
# Type "ruby functions.rb" at command line (Konsole) to run the script
puts reverse([3,6,'dog']).inspect
puts histogram('The Quick brown fox').inspect
puts sum_only_numbers [4, 'foo', [ ], 27, :rain, 3.14]
puts fizzbuzz.join("\n")