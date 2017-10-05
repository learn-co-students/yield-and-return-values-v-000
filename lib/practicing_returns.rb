require 'pry'

def hello(array)
  i = 0
  while i < array.length
    binding.pry ## I added this ##
    yield(array[i])
    i += 1
    hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
    #hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
  end
end

#binding.pry
#hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
