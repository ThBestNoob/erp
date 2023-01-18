# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# 50.times do |n|
#     car = Product.new({
#         name: Faker::Vehicle.make_and_model,
#         description: Faker::Lorem.sentence,
#         quantity: Faker::Number.number(digits: 2),
#         value: Faker::Number.decimal(l_digits: 6)
#     })

#     car.save
# end

# 5.times do |n|
#     id = Faker::Number.within(range: 1..50)
#     p id

#     sale = Sale.create(
#         product_id: id,
#         quantity: Faker::Number.within(range: 1..5)
#     )
#     #p sale
# end

sale = Sale.all

sale.each do |s|

    s.total_value = s.product.value * s.quantity

    s.save

end