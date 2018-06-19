require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

### Exercise 2: Update the first store

@store1 = Store.find(1)
@store2 = Store.find(2)
@store1.name = 'Los Angeles'
@store1.save