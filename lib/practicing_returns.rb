
def hello(array)
  i = 0
  collection=[]
  while i < array.length
    collection << yield(array[i])
    i += 1
    puts array.length
  end
  collection
end


hello(["Tim", "Tom", "Jim"]) { |name|  "Hi, #{name}" }
