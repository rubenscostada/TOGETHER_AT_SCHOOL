require 'open-uri'

puts 'Deleting all classes'
UserKid.destroy_all
Kid.destroy_all
Classe.destroy_all
User.destroy_all
Picture.destroy_all

puts 'Creating fake teachers'
user1 = User.create!(
  first_name: 'Rubens',
  last_name: 'Costa',
  email: 'rubens.costa.da@gmail.com',
  password: '123456',
  admin: true
  )

puts 'Creating fake classes'
class1 = Classe.create!(
  name: 'Vertical Group 1',
  year: 2020,
  user: user1
  )

puts 'Creating fake parents'
dad1 = User.create!(
  first_name: 'Mike',
  last_name: 'Tyson',
  email: 'mike@gmail.com',
  password: '123456',
  admin: false,
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

puts "creating kids"
k1 = Kid.create!(
  first_name: "Joao",
  last_name: "Otero",
  classe: Classe.all.first
  )
file1 = URI.open('https://images.unsplash.com/photo-1595601827380-a3f606ea4fba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
k1.photo.attach(io: file1, filename: 'filename1', content_type: 'image/jpg')

k2 = Kid.create!(
  first_name: "Harry",
  last_name: "Vinton",
  classe: Classe.all.first
  )
file2 = URI.open('https://images.unsplash.com/photo-1585082041509-1baafb6fad23?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
k2.photo.attach(io: file2, filename: 'filename2', content_type: 'image/jpg')


k3 = Kid.create!(
  first_name: "Stacey",
  last_name: "Ledgerwood",
  classe: Classe.all.first
  )
file3 = URI.open('https://images.unsplash.com/photo-1511933617088-859b414f00ae?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=670&q=80')
k3.photo.attach(io: file3, filename: 'filename3', content_type: 'image/jpg')


k4 = Kid.create!(
  first_name: "Marcia",
  last_name: "Wildermuth",
  classe: Classe.all.first
  )
file4 = URI.open('https://images.unsplash.com/photo-1476638305939-a09cd694566c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
k4.photo.attach(io: file4, filename: 'filename4', content_type: 'image/jpg')


k5 = Kid.create!(
  first_name: "Fredrick",
  last_name: "Philippe",
  classe: Classe.all.first
  )
file5 = URI.open('https://images.unsplash.com/photo-1485423036251-8b2a2909899f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1100&q=80')
k5.photo.attach(io: file5, filename: 'filename5', content_type: 'image/jpg')

k6 = Kid.create!(
  first_name: "Reda",
  last_name: "Lauver",
  classe: Classe.all.first
  )
file6 = URI.open('https://images.unsplash.com/photo-1545241361-3378f8ea83b8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1002&q=80')
k6.photo.attach(io: file6, filename: 'filename6', content_type: 'image/jpg')


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

puts 'Creating fake Class pictures'

file1 = URI.open('https://images.unsplash.com/photo-1571210862729-78a52d3779a2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80')
file2 = URI.open('https://images.unsplash.com/photo-1540479859555-17af45c78602?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80')
file3 = URI.open('https://images.unsplash.com/photo-1472162072942-cd5147eb3902?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60')
file4 = URI.open('https://images.unsplash.com/photo-1516627145497-ae6968895b74?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60')
picture = Picture.create!(classe: class1)
picture.photos.attach(io: file1, filename: 'filename1', content_type: 'image/jpg')
picture.photos.attach(io: file2, filename: 'filename2', content_type: 'image/png')
picture.photos.attach(io: file3, filename: 'filename3', content_type: 'image/png')
picture.photos.attach(io: file4, filename: 'filename4', content_type: 'image/png')
puts 'Done!!!'






