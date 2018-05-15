require 'pry'

def hello(array)
  i = 0
  puts array.length
  collection = []
  while i < array.length

    # str = yield(array[i])

    collection << yield(array[i])
    i += 1
  end
  puts "collection:"
  puts collection.inspect
end


hello(["Tom", "Tony", "Todd"]) {|name| "Hi, #{name}" }