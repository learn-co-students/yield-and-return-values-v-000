require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length
    # binding.pry
    collection << yield(array[i])
    i += 1
  end
  collection
end


col = hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
