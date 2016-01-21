
# Testing a basic block to see how it works
def test
   puts "You are in the method"
   yield
   puts "You are again back to the method"
   yield
end

puts ""
test {puts "You are in the block"}
puts ""

puts "======================================================"
puts ""

# Passing parameters to a block
def test
   yield 5, 15
   puts "You are in the method test"
   yield 100
end

test {|i, x| puts "You are in the block #{i} | #{x}"}
puts ""

puts "======================================================"
puts ""

# Can you mix block.call and yield?

def test(&block)
    puts "inside test -- calling block"
    block.call
    puts "inside test -- after calling block"
    yield
end

test { puts "This is my block." }
puts ""

puts "======================================================"
puts ""
