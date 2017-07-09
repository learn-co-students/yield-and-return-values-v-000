def hello(array)
  i = 0
  collection = []
  # binding.pry
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  collection
end

array = ["Tim", "Tom", "Jim"]
hello(array) { |name| "Hi, #{name}" }
