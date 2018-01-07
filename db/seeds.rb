# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

user1 = User.create!(email: "jetzareth@meta.com", password: "123456")
user2 = User.create!(email: "andreina@meta.com", password: "123456")
user3 = User.create!(email: "yamileth@meta.com",  password: "123456")
user4 = User.create!(email: "sandra@meta.com",   password: "123456")
user5 = User.create!(email: "merli@meta.com",    password: "123456")


Profile.create!(user: user1, name: "Jetzareth", meta_kilos: 2)
Profile.create!(user: user2, name: "Andreina",  meta_kilos: 2)
Profile.create!(user: user3, name: "Yamileth",  meta_kilos: 2)
Profile.create!(user: user4, name: "Sandra",    meta_kilos: 3)
Profile.create!(user: user5, name: "Merli",     meta_kilos: 2)

Chequeo.create!(user: user1, fecha: "06/01/2018", peso: 70.3)
Chequeo.create!(user: user2, fecha: "06/01/2018", peso: 78.0)
Chequeo.create!(user: user3, fecha: "06/01/2018", peso: 64.9)
Chequeo.create!(user: user4, fecha: "06/01/2018", peso: 77.0)
Chequeo.create!(user: user5, fecha: "06/01/2018", peso: 67.5)

Chequeo.create!(user: user1, fecha: "13/01/2018", peso: 69.3)
Chequeo.create!(user: user2, fecha: "13/01/2018", peso: 77.0)
Chequeo.create!(user: user3, fecha: "13/01/2018", peso: 63.9)
Chequeo.create!(user: user4, fecha: "13/01/2018", peso: 76.0)
Chequeo.create!(user: user5, fecha: "13/01/2018", peso: 66.5)
