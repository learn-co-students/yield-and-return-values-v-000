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

# And that's it! We've successfully built our own iteration using a while loop, 
# yielded each individual member of an array to a block and captured the return
# values of yielding those items to the block. This is exactly how the collect
# method works, and we've just built it out, all by ourselves.
