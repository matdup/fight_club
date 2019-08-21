# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Arena.destroy_all

User.create!(
  user_name: "Mika le grand",
  email: "test1@test.com",
  password: "123456"
  )

User.create!(
  user_name: "Wadi l'invaincu",
  email: "test2@test.com",
  password: "123456"
  )

User.create!(
  user_name: "Mathias le redouté",
  email: "test3@test.com",
  password: "123456"
  )

User.create!(
  user_name: "Qwent le vaillant",
  email: "test4@test.com",
  password: "123456"
  )

a = Arena.new(
  title: "Arène du bout de la rue",
  description: "Rue du Bon-Secours, Brussel",
  photo: "https://images.unsplash.com/photo-1525680996651-0222228be6f0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80",
  price: 15,
  user_id: User.first.id
)
a.remote_photo_url = "https://images.unsplash.com/photo-1525680996651-0222228be6f0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80"
a.save!

a = Arena.new(
  title: "Arène du Mika",
  description: "Rue du seigneur",
  photo: "https://images.unsplash.com/photo-1542720046-1e772598ea39?ixlib=rb-1.2.1&auto=format&fit=crop&w=1252&q=80",
  price: 75,
  user_id: User.all[1].id
)
a.remote_photo_url = "https://images.unsplash.com/photo-1542720046-1e772598ea39?ixlib=rb-1.2.1&auto=format&fit=crop&w=1252&q=80"
a.save!


a = Arena.new(
  title: "Arène de wesh Wadi",
  description: "Rue du olé",
  photo: "https://images.unsplash.com/photo-1509563268479-0f004cf3f58b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80",
  price: 150,
  user_id: User.all[2].id
)
a.remote_photo_url = "https://images.unsplash.com/photo-1509563268479-0f004cf3f58b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"
a.save!

a = Arena.new(
  title: "Arène de Mathias",
  description: "Rue du pokémon",
  photo: "https://images.unsplash.com/photo-1560191832-d3bb3d4852a9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80",
  price: 15,
  user_id: User.all[3].id
)
a.remote_photo_url = "https://images.unsplash.com/photo-1560191832-d3bb3d4852a9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80"
a.save!

a = Arena.new(
  title: "Arène du Qwentinator",
  description: "Rue du bon vivant",
  photo: "https://images.unsplash.com/photo-1542457953430-c046813ffa86?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80",
  price: 55,
  user_id: User.all[3].id
)
a.remote_photo_url = "https://images.unsplash.com/photo-1542457953430-c046813ffa86?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"
a.save!

a = Arena.new(
  title: "Arène de le folie",
  description: "Rue dse blessés",
  photo: "https://images.unsplash.com/photo-1542459629-519887d476da?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80",
  price: 200,
  user_id: User.all[2].id
)
a.remote_photo_url = "https://images.unsplash.com/photo-1542459629-519887d476da?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80"
a.save!

