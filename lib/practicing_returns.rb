# lib/practicing_returns.rb
=begin
  #hello(array) uses a while loop to iterate over array, yielding to each element of the array.
  it captures the return value of using yield
  and returns the values of yielding those items to the blocks
  #hello(array) works the same as the #collect method does.
=end
 
require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  collection
end


hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
