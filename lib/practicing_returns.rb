require 'pry'


def hello(array)
  i = 0
   collection = []
  while i < array.length  
    yield(array[i])
    collection << yield(array[i])
    i += 1
  end
  collection
     binding.pry
end


hello(["Tim", "Tom", "Jim"]) { |name|  "Hi, #{name} " }

# hello(arr) do |name|
#   if name.start_with?("J")
#     puts "Careful with your trade  #{name} "
#   end
# end