require 'pry'

def hello(array)
  i = 0
  while i < array.length
  	collection << yield(array[i]_
    i += 1
  end
  collection
end


hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
