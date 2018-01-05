require 'pry'

def hello(array)
  i = 0
  collection = [ ]
  while i < array.length
    #can add binding.pry here to manually execute yield(array[i])
    collection << yield(array[i])
    i += 1
  end
  collection
end

#can add binding.pry here to manually invoke #hello and see the return value
hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
