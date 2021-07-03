require 'pry'
def hello(array)
  i = 0
  while i < array.length
    binding.pry
    yield(array[i])
    i += 1
  collection << yield(array[i])
  end
collection
end
