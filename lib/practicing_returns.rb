require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length
    collection <<
    yield(array[i])
    #calling yield(some_argument) will give us the return value of the execution of the block with that argument
    i += 1
  end
  collection
end

#Here we are setting a variable, collection, equal to an empty array.
#Then, inside our while loop, we push the return value of using yield(array[i]) into that collection array.
#Lastly, we need to return that new collection at the end of our method.

#Above we built our own iteration using a while loop,
#yielded each individual member of an array to a block and
#captured the return values of yielding those items to the block.
#This is exactly how the #collect method works.

hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
