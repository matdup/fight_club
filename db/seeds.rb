# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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

Arena.create!(
  title: "Arène du bout de la rue",
  address: "Rue du Bon-Secours, Brussel",
  photo: "https://images.unsplash.com/photo-1495555687398-3f50d6e79e1e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
  price: 15,
  user_id: 1
)

Arena.create!(
  title: "Arène du Mika",
  address: "Rue du seigneur",
  price: 75,
  user_id: 2
)

Arena.create!(
  title: "Arène de wesh Wadi",
  address: "Rue du olé",
  price: 150,
  user_id: 3
)

Arena.create!(
  title: "Arène de Mathias",
  address: "Rue du pokémon",
  price: 15,
  user_id: 4
)

Arena.create!(
  title: "Arène du Qwentinator",
  address: "Rue du bon vivant",
  price: 55,
  user_id: 4

)

Arena.create!(
  title: "Arène de le folie",
  address: "Rue dse blessés",
  price: 200,
  user_id: 3
)
