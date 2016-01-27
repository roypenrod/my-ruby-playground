=begin
    shopping_list.rb

    Goal:  Write a simple command line app to manage a shopping list
    without saving it.  This is just a basic app to learn about
    working with Ruby collections in a procedural programming style.
=end

# definitions here

def create_list
    puts " "
    puts "What is the list name? "
    name = gets.chomp

    hash = { "name" => name, "items" => Array.new }
    return hash
end

# app starts here

shopping_list = create_list

puts " "
puts shopping_list.inspect
