require 'pry'

def hello(array)
  i = 0
  x = []
  while i < array.length
    x << yield(array[i])
    i += 1
  end
  x
end

binding.pry
hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
