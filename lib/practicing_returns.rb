require 'pry'

def hello(array)
  i = 0
  while i < array.length
    yield(array[i])
    i += 1
  end
  binding.pry 
  array 
end


hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
