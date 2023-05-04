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
puts "Enter a new Store name"
@storeName = gets.chomp
newStore = Store.create(name: "#{@storeName}", annual_revenue: 1200)
if (!newStore.valid?)
  puts newStore.errors.objects.first.full_message
end
