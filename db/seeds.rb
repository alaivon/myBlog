# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "creating type...."
kind = ["Expense", "Revenue"]
kind.each do |kind|
  Catalog.create(kind: kind)
end

# record_date = []
# record_date = []
# amount = [200,250,120,100,60,90,1000,1200,530,210,120,100,100,140,170,200,160]
# kind = ["dinner", "lunch", "Living Expense", "Some books", "drink", "Basic Expense", "Movie and Food", "Oil", "dinner", "lunch", "Food", "breakfast", "dinner", "lunch"]
# Date.new(2016,4,1).upto(Date.new(2016,4,26)) do |x|
#   record_date << x
# end

# record_info = []
# i = 0
# while i < record_date.length-1
# 	record_info << [record_date.sample, kind.sample, amount.sample]
# 	i = i + 1
# end

# record_info.each do |period, kind, g|
# 	r = Record.new
# 	r.period = period
# 	r.details  = kind
# 	r.amount = g
# 	r.catalog_id =  1
# 	r.save
# end