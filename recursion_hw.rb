require "byebug"

p "---------------"
p "Exercise 1 - sum_to"
def sum_to(n)
    return nil if n.negative?
    
    if n == 1
        return 1
    end

    n + (sum_to(n - 1))
end

p sum_to(5)  # => returns 15
p sum_to(1)  # => returns 1
p sum_to(9)  # => returns 45
p sum_to(-8)  # => returns nil


p "---------------"
p "Exercise 2 - add_numbers"
def add_numbers(nums_array)
    return nil if nums_array.length == 0
    # debugger

    if nums_array.length == 1 #find the thing you have an answer for
        return nums_array[nums_array.length - 1] #think indices written in .length
    end

    nums_array[nums_array.length-1] + add_numbers(nums_array[0...nums_array.length-1])
    # last index  + sum of array from index 0 to penultimate index
end

p  add_numbers([1,2,3,4]) # => returns 10
p add_numbers([3]) # => returns 3
p add_numbers([-80,34,7]) # => returns -39
p add_numbers([]) # => returns nil



p "---------------"
p "Exercise 3 - Gamma Function"
def gamma_fnc(n) # (n) = (n-1)!
    return nil if n == 0
    return 1 if n == 1

    (n-1) * gamma_fnc(n-1)

end
p gamma_fnc(0)  # => returns nil
p gamma_fnc(1)  # => returns 1
p gamma_fnc(4)  # => returns 6
p gamma_fnc(8)  # => returns 5040

#gamma(2) (2 - 1)! = 1! = 
#gamma(3) (3 - 1)! = 2! = 2 * 1 = 2
#gamma(4) (4 - 1)! = 3! = 3 * 2 * 1


p "---------------"
p "Exercise 4 - Ice Cream Shop"
# Write a function ice_cream_shop(flavors, favorite) that takes in an array 
# of ice cream flavors available at the ice cream shop, as well as the 
# user's favorite ice cream flavor. Recursively find out whether or not 
# the shop offers their favorite flavor.

def ice_cream_shop(flavors, favorite)
    return false if flavors.empty?
    return true if flavors[0] == favorite

    if flavors[0] != favorite
        removed = []
        removed << flavors.shift
        ice_cream_shop(flavors - removed, favorite)
    else return true
    end
end

p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
  p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
  p ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
  p ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
  p ice_cream_shop([], 'honey lavender')  # => returns false




p "---------------"
p "Exercise 5 - Reverse"
def reverse(string)
    return string if string.length <= 1

    #start with last index -1 and add it to the function up to string-2
    # string[- 1] + reverse(string[0..string.length - 2])
    string[-1] + reverse(string.chop) #chop takes the last element out and returns everything else
end


p reverse("house") # => "esuoh"
p reverse("dog") # => "god"
p reverse("atom") # => "mota"
p reverse("q") # => "q"
p reverse("id") # => "di" #string length = 2
p reverse("") # => ""