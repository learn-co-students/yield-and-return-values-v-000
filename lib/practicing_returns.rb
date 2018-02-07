require 'pry'

def hello(array)
  i = 0
  array1 =[]
  while i < array.length
  binding.pry
    yield(array1 << array[i])
    i += 1
  end
end

hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
