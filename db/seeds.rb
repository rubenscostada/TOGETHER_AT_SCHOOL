# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Deleting all classes'
UserKid.destroy_all
Kid.destroy_all
Classe.destroy_all
User.destroy_all




puts 'Creating fake teachers'
user1 = User.create!(
  first_name: 'Rubens',
  last_name: 'Costa',
  email: 'rubens.costa.da@gmail.com',
  password: '123456',
  admin: true
  )

puts 'Creating fake parents'
dad1 = User.create!(
  first_name: 'Mike',
  last_name: 'Tyson',
  email: 'mike@gmail.com',
  password: '123456',
  admin: false
  )

mom1 = User.create!(
  first_name: 'Mary',
  last_name: 'Tyson',
  email: 'mary@gmail.com',
  password: '123456',
  admin: false
  )

dad2 = User.create!(
  first_name: 'John',
  last_name: 'Smith',
  email: 'john@gmail.com',
  password: '123456',
  admin: false
  )

mom2 = User.create!(
  first_name: 'Elizabeth',
  last_name: 'Smith',
  email: 'elizabeth@gmail.com',
  password: '123456',
  admin: false
  )

dad3 = User.create!(
  first_name: 'William',
  last_name: 'Jones',
  email: 'william@gmail.com',
  password: '123456',
  admin: false
  )

mom3 = User.create!(
  first_name: 'Sarah',
  last_name: 'Jones',
  email: 'sarah@gmail.com',
  password: '123456',
  admin: false
  )

dad4 = User.create!(
  first_name: 'Thomas',
  last_name: 'Taylor',
  email: 'thomas@gmail.com',
  password: '123456',
  admin: false
  )

mom4 = User.create!(
  first_name: 'Margaret',
  last_name: 'Taylor',
  email: 'margaret@gmail.com',
  password: '123456',
  admin: false
  )

dad5 = User.create!(
  first_name: 'George',
  last_name: 'Brown',
  email: 'george@gmail.com',
  password: '123456',
  admin: false
  )

mom5 = User.create!(
  first_name: 'Ann',
  last_name: 'Brown',
  email: 'ann@gmail.com',
  password: '123456',
  admin: false
  )

puts 'Creating fake classes'
class1 = Classe.create!(
  name: 'Vertical Group 1',
  year: 2020,
  user: user1
  )

puts "creating kids"
k1 = Kid.create!(
  first_name: "Joao",
  last_name: "Otero",
  classe: Classe.all.first
  )

k2 = Kid.create!(
  first_name: "Harry",
  last_name: "Vinton",
  classe: Classe.all.first
  )

k3 = Kid.create!(
  first_name: "Stacey",
  last_name: "Ledgerwood",
  classe: Classe.all.first
  )

k4 = Kid.create!(
  first_name: "Marcia",
  last_name: "Wildermuth",
  classe: Classe.all.first
  )

k5 = Kid.create!(
  first_name: "Fredrick",
  last_name: "Philippe",
  classe: Classe.all.first
  )

k6 = Kid.create!(
  first_name: "Reda",
  last_name: "Lauver",
  classe: Classe.all.first
  )

puts "giving birth"

userkid1 = UserKid.create!(user: dad1, kid: k1)
userkid2 = UserKid.create!(user: mom1, kid: k1)
userkid3 = UserKid.create!(user: dad2, kid: k2)
userkid4 = UserKid.create!(user: mom2, kid: k2)
userkid5 = UserKid.create!(user: dad3, kid: k3)
userkid6 = UserKid.create!(user: mom3, kid: k3)
userkid7 = UserKid.create!(user: dad4, kid: k4)
userkid8 = UserKid.create!(user: mom4, kid: k4)
userkid9 = UserKid.create!(user: dad5, kid: k5)
userkid10 = UserKid.create!(user: mom5, kid: k5)
userkid9 = UserKid.create!(user: dad5, kid: k6)
userkid10 = UserKid.create!(user: mom5, kid: k6)

puts 'Done!!!'






