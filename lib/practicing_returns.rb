require 'pry' #We've built a collect iterator

def hello(array)
  collection = [] #Creates a new array to store the values in
  i = 0 #This starts the counter
  while i < array.length
    collection << yield(array[i]) #This pushes the value of the array index into the collection array. Yield allows us to push value in.
    i += 1 #This keeps track of the counter and will stop the while loop.
  end
  collection #this returns the new array.
end


hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
