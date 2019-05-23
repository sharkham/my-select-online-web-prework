def my_select(collection)
 if collection == [] 
   "This block should not run!"
 else 
   new_collection = []
   i = 0 
   while i < collection.length 
    new_collection << collection[i] if (yield(collection[i]) == true)
    #new_collection << yield(collection[i])
    i += 1
    #do stuff that will return the elements being passed through a block if they evaluate true to the block. 
    #the return value of yield here is true/false, and I want to get at the thing that's making it evaluate true/false.
    # for each yield(collection[i]) that is true, I want collection[i]
   end 
   new_collection
 end 
end

  #def select(&block)
    #result =[]
    #self.each do |element|
      #result << element if block.call(element) == true
    #end
    #result
  #end
  
      #new_collection2 = yield(collection[i])
    #new_collection << new_collection2 if (new_collection[i] == true)