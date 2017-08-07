require 'pry'

def hello(array)
  i = 0

  while i < array.length
   yield(array[i])
    i += 1
  end

end

hello(["Tim", "gues", "Jim"]) { |name| puts "Hi, #{name}" }
#binding.pry
