#!/usr/bin/ruby -w

# Returning multiple values from method as array
puts "Returning multiple values from method as array . . ."
puts " "

def test
   i = 100
   j = 200
   k = 300
return i, j, k
end
var = test
puts var

puts " "
puts " "

puts "=============================================="

puts " "
puts " "

# Ruby method with variable number of parameters.
puts "Sending variable number of parameters to method . . ."
puts " "

def sample (*test)
   puts "The number of parameters is #{test.length}"
   for i in 0...test.length
      puts "The parameters are #{test[i]}"
   end
end

sample "Zara", "6", "F"
puts " "
sample "Mac", "36", "M", "MCA"

puts " "
puts " "

puts "=============================================="

puts " "
puts " "


# Static class method in Ruby
puts "Accessing a static class method in Ruby . . ."
puts " "

class Accounts
   def readingCharge
       puts "can't call readingCharge without creating an object"

   end
   def Accounts.returnDate
       puts "called returnDate method without creating an object"
   end
end

puts Accounts.returnDate
puts " "
puts "Try to call Accounts.readingCharge method without creating an object"
# puts Accounts.readingCharge
puts "Can't do it.  Had to comment it out to get rest of program to run."
puts " "
puts "Create an Accounts object and call readingCharge method"
account101 = Accounts.new
account101.readingCharge
puts " "


puts " "
puts " "

puts "=============================================="

puts " "
puts " "
