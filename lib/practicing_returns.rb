def hello(array)
  i = 0
  # set a var collection to an empty array
  collection = []
  while i < array.length
    # push the return value into the collection array
    collection << yield(array[i])
    i += 1
  end
  # return the new collection at the end of the method
  collection
end


hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
