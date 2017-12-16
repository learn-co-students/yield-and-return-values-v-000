def hello(array)
  i = 0
  collection = [0]
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  collection
end
