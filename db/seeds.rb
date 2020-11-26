require 'open-uri'

puts 'Deleting everything'
UserKid.destroy_all
SmallEvent.destroy_all
Kid.destroy_all
Event.destroy_all
Classe.destroy_all
Picture.destroy_all
Message.destroy_all
Chatroom.destroy_all
User.destroy_all



puts 'Creating fake teachers'
user1 = User.create!(
  first_name: 'Emily',
  last_name: 'Burns',
  email: 'emily.burns@gmail.com',
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
  first_name: 'Ricardo',
  last_name: 'Otero',
  email: 'rikas@gmail.com',
  password: '123456',
  admin: false,
  )

mom1 = User.create!(
  first_name: 'Shannon',
  last_name: 'Graybill',
  email: 'shannon@gmail.com',
  password: '123456',
  admin: false
  )

dad2 = User.create!(
  first_name: 'Patrick',
  last_name: 'Pinto',
  email: 'patrick@gmail.com',
  password: '123456',
  admin: false
  )

mom2 = User.create!(
  first_name: 'Margarida',
  last_name: 'Toureiro',
  email: 'elizabeth@gmail.com',
  password: '123456',
  admin: false
  )

dad3 = User.create!(
  first_name: 'Diogo',
  last_name: 'Telo',
  email: 'diogo@gmail.com',
  password: '123456',
  admin: false
  )

mom3 = User.create!(
  first_name: 'Mariana',
  last_name: 'Marcelino',
  email: 'sarah@gmail.com',
  password: '123456',
  admin: false
  )

dad4 = User.create!(
  first_name: 'João',
  last_name: 'Sanches',
  email: 'joao@gmail.com',
  password: '123456',
  admin: false
  )

mom4 = User.create!(
  first_name: 'Rita',
  last_name: 'Laia',
  email: 'rita@gmail.com',
  password: '123456',
  admin: false
  )

dad5 = User.create!(
  first_name: 'Andre',
  last_name: 'Pires',
  email: 'andre@gmail.com',
  password: '123456',
  admin: false
  )

mom5 = User.create!(
  first_name: 'Mathilde',
  last_name: 'Bergue',
  email: 'mathilde@gmail.com',
  password: '123456',
  admin: false
  )

puts "Creating fake kids"
k1 = Kid.create!(
  first_name: "Sabrina",
  last_name: "Bertol",
  classe: Classe.all.first
  )
file1 = URI.open('https://images.unsplash.com/photo-1595601827380-a3f606ea4fba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
k1.photo.attach(io: file1, filename: 'filename1', content_type: 'image/jpg')

k2 = Kid.create!(
  first_name: "Joana",
  last_name: "Bertoldi",
  classe: Classe.all.first
  )
file2 = URI.open('https://images.unsplash.com/photo-1585082041509-1baafb6fad23?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
k2.photo.attach(io: file2, filename: 'filename2', content_type: 'image/jpg')


k3 = Kid.create!(
  first_name: "Vasco",
  last_name: "Oliveira",
  classe: Classe.all.first
  )
file3 = URI.open('https://images.unsplash.com/photo-1511933617088-859b414f00ae?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=670&q=80')
k3.photo.attach(io: file3, filename: 'filename3', content_type: 'image/jpg')


k4 = Kid.create!(
  first_name: "Ardeshir",
  last_name: "Gourtani",
  classe: Classe.all.first
  )
file4 = URI.open('https://images.unsplash.com/photo-1476638305939-a09cd694566c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
k4.photo.attach(io: file4, filename: 'filename4', content_type: 'image/jpg')


k5 = Kid.create!(
  first_name: "Mathias",
  last_name: "Leniau",
  classe: Classe.all.first
  )
file5 = URI.open('https://images.unsplash.com/photo-1485423036251-8b2a2909899f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1100&q=80')
k5.photo.attach(io: file5, filename: 'filename5', content_type: 'image/jpg')

k6 = Kid.create!(
  first_name: "Julia",
  last_name: "Kauffmann",
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
class1.kids.push(k1, k2, k3, k4, k5, k6)
class1.save

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

puts 'Creating fake Chatrooms'
chatroom1 = Chatroom.create!
message1 = Message.create!(content: "You are now connected to the Joao's dad.", user: dad1, chatroom: chatroom1)
message1 = Message.create!(content: "You are now connected to the Joao's mom.", user: mom1, chatroom: chatroom1)
message1 = Message.create!(content: "You are now connected to the teacher", user: user1, chatroom: chatroom1)

chatroom2 = Chatroom.create!
message2 = Message.create!(content: "You are now connected to the Harry's dad.", user: dad2, chatroom: chatroom2)
message2 = Message.create!(content: "You are now connected to the Harry's mom.", user: mom2, chatroom: chatroom2)
message2 = Message.create!(content: "You are now connected to the teacher", user: user1, chatroom: chatroom2)

chatroom3 = Chatroom.create!
message3 = Message.create!(content: "You are now connected to the Stacey's dad.", user: dad3, chatroom: chatroom3)
message3 = Message.create!(content: "You are now connected to the Stacey's mom.", user: mom3, chatroom: chatroom3)
message3 = Message.create!(content: "You are now connected to the teacher", user: user1, chatroom: chatroom3)

chatroom4 = Chatroom.create!
message4 = Message.create!(content: "You are now connected to the Marcia's dad.", user: dad4, chatroom: chatroom4)
message4 = Message.create!(content: "You are now connected to the Marcia's mom.", user: mom4, chatroom: chatroom4)
message4 = Message.create!(content: "You are now connected to the teacher", user: user1, chatroom: chatroom4)

chatroom5 = Chatroom.create!
message5 = Message.create!(content: "You are now connected to the Fredrick's and Reda's dad.", user: dad5, chatroom: chatroom5)
message5 = Message.create!(content: "You are now connected to the Fredrick's and Reda's mom.", user: mom5, chatroom: chatroom5)
message5 = Message.create!(content: "You are now connected to the teacher", user: user1, chatroom: chatroom5)

puts 'Creating fake events'
event1 = Event.create!(title: "Field trip", description: "Bring your raincoat and boots, it's gonna be raining!", start_time: "Thu, 26 Nov 2020 09:00:00 +0000", end_time: "Thu, 26 Nov 2020 11:00:00 +0000", classe: class1)
event2 = Event.create!(title: "Playground", description: "It's gonna be amazing", start_time: "Fri, 27 Nov 2020 10:00:00 +0000", end_time: "Fri, 27 Nov 2020 12:00:00 +0000", classe: class1)

puts 'Done!!!'






