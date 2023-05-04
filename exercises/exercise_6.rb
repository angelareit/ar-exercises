require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# One-to-many association
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Janna", last_name: "Song", hourly_rate: 55)
@store1.employees.create(first_name: "Paul", last_name: "Roberts", hourly_rate: 58)
@store2.employees.create(first_name: "Olivia", last_name: "Dunn", hourly_rate: 65)
@store2.employees.create(first_name: "Lia", last_name: "Kesh", hourly_rate: 55)
@store2.employees.create(first_name: "Roshi", last_name: "Kohl", hourly_rate: 58)