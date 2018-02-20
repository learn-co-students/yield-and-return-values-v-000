require 'pry'

def hello(array)
  i = 0
  while i < array.length
    yield(array[i])
    i += 1
  end
end

def hello_t(array)
  yield array
end

hello_t([1, 2, 5]) do |element|
  element
end


hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
