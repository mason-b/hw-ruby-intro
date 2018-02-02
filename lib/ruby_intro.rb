# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return 0 if arr.empty?
  arr.reduce(:+)
end

def max_2_sum arr
  return 0 if arr.empty?
  arr.sort.reverse.take(2).reduce(:+)
end

def sum_to_n? arr, n
  return false if arr.empty?
  arr.combination(2).map { |u| u.reduce(:+) }.include?(n)
end

# Part 2

def hello name
  "Hello, " + name
end

def starts_with_consonant? s
  s.match?(/^[A-Za-z]/) and s.downcase.match?(/^[^aeiou]/)
end

def binary_multiple_of_4? s
  return false if !s.match(/^[01]+$/)
  s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty?
    @isbn = isbn
    raise ArgumentError if price <= 0
    @price = price
  end
  def price_as_string
    "$%.2f" % @price
  end
end
