require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  collection
  binding.pry
end

# binding.pry
hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
