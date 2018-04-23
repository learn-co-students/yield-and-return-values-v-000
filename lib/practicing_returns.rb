require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length
    binding.pry
    yield(array[i])
    collection << yield(array[i])
    i += 1
  end
  collectionc
end


hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
