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
@store1.employees.create(first_name: "John", last_name: "Smith", hourly_rate: 70)
@store1.employees.create(first_name: "Carrie", last_name: "Bridgeport", hourly_rate: 80)

@store2.employees.create(first_name: "Able", last_name: "Ham", hourly_rate: 55)
@store2.employees.create(first_name: "Miranda", last_name: "Remainder", hourly_rate: 65)
@store2.employees.create(first_name: "Marie", last_name: "Oakly", hourly_rate: 75)
