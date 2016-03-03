require 'pry'

def hello(array)
  i = 0
  while i < array.length
    yield(array[i])
    i += 1
  end
end


#my comment
hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
