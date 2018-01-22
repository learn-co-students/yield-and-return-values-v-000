require 'pry'

def hello(array)
  i = 0
  collection =[]
  while i < array.length
    #binding.pry
    collection << yield(array[i])
    i += 1
  end
  binding.pry
  collection
end


hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
#hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
# def bye (other_array)
#   x = 0
#   while x < other_array.length
#     yield(other_array[x])
#     i += 1
#     end
#   end
#
# bye(["dick", "rob", "steven", "phil"]) {|name| puts "Seeya later, #{name}!"}
