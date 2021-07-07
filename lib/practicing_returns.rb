require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield(array[i])
    yield(array[i])
    i += 1
  end
  puts collection
end
