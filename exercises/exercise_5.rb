require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@total_revenue = Store.sum(:annual_revenue)
@average_revenue = @total_revenue/ Store.count
@over_one_million = Store.where("annual_revenue > :income", income: 1000000).count

puts "The company's total revenue is: #{@total_revenue}"
puts "The average revenue of all the stores is: #{@average_revenue}"
puts "The number of stores earing more than one millions dollars annually is: #{@over_one_million}"