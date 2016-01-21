class Decade
include Week
   numberOfYears=10
   def numberOfMonths
       number = 10 * 12
       puts "number of months in a decade: #{number}"
   end
end
