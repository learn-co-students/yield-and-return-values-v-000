#the return value of a while loop is always nil
#We can capture the return value of the code that is executed when yield passes a value to a block
def hello(array)
  i = 0
  collection = []
  while i < array.length
    #push the return value of using yield(array[i]) into collection array.
    collection << yield(array[i])
    i += 1
  end
  #return at end of method
  collection
end
