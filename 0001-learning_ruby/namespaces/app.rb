require_relative 'customer'
require_relative 'account'

puts " "
puts "Steve Rogers wants to open an account."

captain_america = WebWorks::CustomerTrackingSystem::Customer.new("Steve Rogers")
puts " "
puts "Customer created."
puts "Customer Name: #{captain_america.getName}"

account_3301 = WebWorks::CustomerTrackingSystem::Account.new(captain_america)
puts " "
puts "Account created."
puts "Account opened for: #{account_3301.getCustomer.getName}"
