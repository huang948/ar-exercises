require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

total_revenue = Store.all.sum("annual_revenue")
puts total_revenue 

all_stores = Store.all
all_stores.each do |store|
    puts "#{store.name} #{store.annual_revenue}"
end

big_stores = Store.where("annual_revenue > ?", 1000000).size
puts big_stores