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

names.collect!(hello(names) { |name| "Hi, #{name}" })
