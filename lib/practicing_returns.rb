require 'pry'

def hello(array)
  i = 0
  new = []
  while i < array.length
	new << yield(array[i])
    i += 1
  end
  new
end

hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
