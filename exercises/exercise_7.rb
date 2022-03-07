require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

name = gets.chomp
@store7 = Store.create(name: "#{name}")


if !@store7.valid?
  puts "Error occured while creating store"
  @store7.errors.each {|error|
    puts "Improper values on column: #{error}"
  } 

end


