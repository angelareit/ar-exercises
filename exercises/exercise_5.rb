require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Calculations
puts "Company's annual revenue: #{Store.sum(:annual_revenue)}"
puts "Company's average annual revenue: #{Store.average(:annual_revenue)}"
@top_store_count= Store.where("annual_revenue > 1000000").count
puts "Number of top stores: #{@top_store_count}"
