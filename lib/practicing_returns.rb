require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield(array[i])
    #Shoveling/Pushing the name to the collection while writing
    i += 1
  end
  collection
end

#Marcel Galang tried doing this ^
#Instead of explaining to me -> He tried moving me forward
#because the answers were the next lesson.


hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
