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

#Arrays are great for storing lists of information
#Block is code inside do and end or in-line between { and }
#Return value of a while loop is always nil
