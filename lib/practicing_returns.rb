#require 'pry'

def hello(array)
  i = 0
  collection = [] # create an empty array to capture returns from "yield"
  while i < array.length
    #binding.pry
    collection << yield(array[i]) # push return values to "collection" array
    i += 1
  end
  #binding.pry
  collection # returns => ["Hi, Tim", "Hi, Tom", "Hi, Jim"]
end

#binding.pry
hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
