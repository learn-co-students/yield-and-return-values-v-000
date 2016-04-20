require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield(array[i]) # will return the value from the block that executes with this yielded arg
    i += 1
  end
  collection
end

hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }