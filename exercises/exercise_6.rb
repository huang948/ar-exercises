require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Davey", last_name: "Feimer", hourly_rate: 60)
@store2.employees.create(first_name: "Derek", last_name: "Chow", hourly_rate: 10)

@store1.employees.all.each do |employee|
    puts "Employee #{employee.id} works at Store #{employee.store_id}"
end