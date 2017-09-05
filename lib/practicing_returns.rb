require 'pry'

def hello(array)
  i = 0
  colletion = [ ] #setting this variable equal to empty array
  while i < array.length
    collection << yield (array[i]) #push the return value of using yield(array[i]) into collection
    i += 1
  end
  collection #need to return the value of new array
end

#hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
