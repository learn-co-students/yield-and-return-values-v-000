require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length
    colection << yield(array[i])
    i += 1
  end
end


hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
