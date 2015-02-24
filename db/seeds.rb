# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
Product.create! name: "Nexus 4", price: 200, permalink: 'nexus-4'
Product.create! name: "Nexus 5", price: 300, permalink: 'nexus-5'
Product.create! name: "Nexus 6", price: 400, permalink: 'nexus-6'
Product.create! name: "iPhone 6", price: 500, permalink: 'iphone-6'