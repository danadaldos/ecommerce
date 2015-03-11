# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
CartItem.delete_all
Cart.delete_all
Product.delete_all
Product.create! name: "Bubble Wrap Calendar", price: 24.99, permalink: 'bubble-wrap-calendar', photo_url: 'http://theworstthingsforsale.com/wp-content/uploads/2015/02/bubble-wrap-calendar.jpg'
Product.create! name: "Swiss Stake: Canned Steak Patties", price: 86.99, permalink: 'canned-steak-patties', photo_url: 'http://theworstthingsforsale.com/wp-content/uploads/2015/02/swiss-stake.jpg'
Product.create! name: "Walden Farms Amazin' Mayo Spread, 12 Ounce", price: 3.79, permalink: 'mayo', photo_url: 'http://theworstthingsforsale.com/wp-content/uploads/2015/02/walden-farms-mayo.jpg'
Product.create! name: "Password Therapy", price: 2.99, permalink: 'passwords', photo_url: 'http://theworstthingsforsale.com/wp-content/uploads/2015/02/password-therapy.jpg'
Product.create! name: "iPod cable", price: 49999.99, permalink: 'ipod-cable', photo_url: 'http://theworstthingsforsale.com/wp-content/uploads/2015/02/50k-ipod-cable1.jpg'
Product.create! name: "13x13x13 speed cube", price: 334.99, permalink: 'speed-cube', photo_url: 'http://theworstthingsforsale.com/wp-content/uploads/2015/01/yj-moju-13-13-13-cube.jpg'
Product.create! name: "Sudoku Toiler Paper", price: 14.18, permalink: 'sudoku-paper', photo_url: 'http://theworstthingsforsale.com/wp-content/uploads/2015/02/sudoku-toilet-paper.jpg'
Product.create! name: "Edible Glitter", price: 5.16, permalink: 'edible-glitter', photo_url: 'http://theworstthingsforsale.com/wp-content/uploads/2015/02/edible-glitter.jpg'