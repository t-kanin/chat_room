# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#create users

john  = User.create(username: "John", password: "password")
smith = User.create(username: "smith", password: "password")
joe   = User.create(username: "Joe", password: "password")
jaah  = User.create(username: "Jaah", password: "password")

msg_1  = Message.create(body: "Hello smith", user: john)
msg_2  = Message.create(body: "What do you want to do today?", user: john)
msg_3  = Message.create(body: "Sup, john", user: smith)
msg_4  = Message.create(body: "Anyone want some coffee?", user: joe)
msg_5  = Message.create(body: "Give me one, pls !!", user: jaah)