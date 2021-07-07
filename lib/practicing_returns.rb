require 'pry'

names = ["Tim", "Tom", "Jim"]

def hello(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  collection
end

puts hello(names) { |name| "Hi, #{name}" }
