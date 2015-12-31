require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  collection
end

fellas = ['Tim', 'Tom', 'Jim']

hello(fellas) { |name| puts "Hi, #{name}" }
hello(fellas) { |name| name << "my" }
