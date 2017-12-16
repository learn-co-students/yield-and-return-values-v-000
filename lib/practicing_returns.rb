require 'pry'

def hello(array)
  i = 0
  collection = Array.new
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  return collection.inspect
end


hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
