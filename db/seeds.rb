# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name: "Meks M", username: "Meks", password: "1234")
u2 = User.create(name: "Max M", username: "MadMax", password: "1234")

b1 = u1.blogs.build(title: "Second Blog Post", content: "Testing a new blog post")
b2 = u1.blogs.build(title: "Third Blog Post", content: "Testing another new blog post")
b3 = u2.blogs.build(title: "Fourth Blog Post", content: "We love writing blogs!")

b1.save
b2.save
b3.save