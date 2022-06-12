require "byebug"

# def range(min,max) #exclude max
#   return nil if min == max
#   return [] if max < min
#   arr = (min..max).to_a
#   # return [min] if (min...max).to_a.length == 2
#   return [min] if arr.length == 2
#   range(min,max-1) << max-1


#   # if array.length = 2, return index[0]

#   #return an array
#   # max < min, you can return an empty array.
# end

# p range(1,4) # => [1,2,3]
# #min is 1
# #exclude 4
# #nums = array we're getting back is min to max - 1

# p range(1,3) # => [1,2]
# #min is 1
# #exclude 3
# #nums = array we're getting back is min to max - 1

# p range(1,2) # => [1]
# #min is 1
# #exclude 2
# # nums = [1]


# p range(19, 19) # => 1, 2, 3, 4]

# def exp(b, n)
#   return 1 if n == 0
#   return b if n == 1

#   if n.odd?
#     for_odd = (exp(b, (n - 1) / 2) )
#     b * for_odd  * for_odd 
#   else
#     for_even = exp(b, n / 2) #exp(2,4) = 16
#     for_even * for_even
#     #n/2 = 2
#     # b = 2
#   end
# end

# p exp(0, 0) #=> 1
# p exp(0, 1) #=>0
# p exp(1, 0) #=> 1
# p exp(1, 1)#=> 1
# p exp(1, 2)#=>1
# p exp(2, 0)#=> 1
# p exp(2, 1) #=>2
# p exp(2, 2) #=> 4

# class Array
#   def deep_dup

#     self.map do |ele|
#       if ele.is_a?(Array)
#         ele.deep_dup
#       else
#         ele
#       end
#     end 
#   end
  
# end

# a = [1, [2], [3, [4]]]
# p a.deep_dup


# def fib(n)
 
#   return [] if n == 0
#   return [1] if n == 1
#   return [1, 1] if n == 2
  
#   last_fib = fib(n-1)
#   last_fib << last_fib[-1] + last_fib[-2]

# end


# p fib(4) #= [1,1,2,3]
# p fib(3) #= [1,1,2]
# p fib(2) #= [1,1]
# p fib(1) #= [1]





def bsearch(array, target)
  return nil if array.length == 0
  mid = array.length / 2
  pivot = array[mid]
  return mid if target == pivot

  if pivot == target
    return mid
  elsif pivot < target
    right_search = bsearch(array[mid + 1..-1], target)
    mid + 1 + right_search unless right_search == nil
  elsif pivot > target
    bsearch(array[0...mid], target)
  end
end

# display target
# display array
# display mid_idx
# display pivot

p bsearch([1, 2, 3], 1) # => 0
p bsearch([2, 3, 4, 5], 3) # => 1
p bsearch([2, 4, 6, 8, 10], 6) # => 2
p bsearch([1, 3, 4, 5, 9], 5) # => 3
p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil

def merge_sort
end

   