require 'pry'

def hello(array)
  i = 0
  collections = []
  while i < array.length
    binding.pry
    collections << yield(array[i])
    i += 1
  end
  collections 
end

binding.pry
hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
