#!/usr/bin/ruby -w

class Customer
    @@numOfCustomers = 0

    def initialize(fullName, streetAddress, city, state, zipcode)
        @@numOfCustomers += 1
        @id = @@numOfCustomers
        @fullName = fullName
        @streetAddress = streetAddress
        @city = city
        @state = state
        @zipcode = zipcode
    end

    def displayDetails
        puts "ID: #{@id}"
        puts @fullName
        puts @streetAddress
        puts "#{@city}, #{@state}  #{@zipcode}"
    end

    def getTotalCustomers
        puts @@numOfCustomers
    end
end

# execution starts here
roy = Customer.new("Roy Penrod", "608 Black Oak Ave, Apt 16", "Springdale", "AR", "72764")
peter = Customer.new("Peter Parker", "1503 Lafayette Ave", "Bronx", "NY", "81493")
herman = Customer.new("Herman Munster", "1313 Mockingbird Lane", "Monsterville", "CA", "36161")


puts " "
herman.displayDetails
puts " "
roy.displayDetails
puts " "
peter.displayDetails
puts " "
puts "Total Customer Count: "
puts roy.getTotalCustomers

puts " "
puts " "

bob = Customer.new("Bob Hope", "", "Beverly Hills", "CA", "90210")

if defined? bob
    puts "Bob exists."
    puts " "
else
    puts "Who?  Bob?  Who's that?"
    puts " "
end
