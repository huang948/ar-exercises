require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

@store2.employees.create!(first_name: "Jordan", last_name: "Huang", hourly_rate: 60)

@store2.employees.all.each do |employee|
    puts "Employee #{employee.id} #{employee.first_name} #{employee.last_name} with password: #{employee.password} works at Store #{employee.store_id}"
end

