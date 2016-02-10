require 'pry'

def hello(array)
  i = 0
  capture_val_from_yield = []
  while i < array.length
    capture_val_from_yield << yield(array[i])
    i += 1
  end
  capture_val_from_yield
end

hello(%w(Tim Tom Jim)) { |name| "Hi, #{name}" }


=begin
# this is the original, It returns nil, because the return value of a while loop is always nil. As is the return value of puts.

def hello(array)
  i = 0
  while i < array.length
    yield(array[i])
    i += 1
  end
end

binding.pry
hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
# > Hi, Tim
# > Hi, Tom
# > Hi, Jim
# => nil
=end