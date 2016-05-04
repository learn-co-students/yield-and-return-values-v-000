#require 'pry'

#def hello(array)
  #i = 0
  #while i < array.length
    
    #yield(array[i])
    #i += 1
  #end
#end

#binding.pry
#hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }

#hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" } # <-- change to the code block  to capture the return value 


# updated code from above 

require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length #---> push the return value using 'Yield(array[i])' Into the Collection array 
    yield(array[i])
    i += 1
  end
  collection #---> returning the new collection
end



#hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }