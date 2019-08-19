# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Arena.create!(
  title: "Arène du bout de la rue",
  description: "Rue du Bon-Secours, Brussel",
  price: 15
)

Arena.create!(
  title: "Arène du Mika",
  description: "Rue du seigneur",
  price: 75
)

Arena.create!(
  title: "Arène de wesh Wadi",
  description: "Rue du olé",
  price: 150
)

Arena.create!(
  title: "Arène de Mathias",
  description: "Rue du pokémon",
  price: 15
)

Arena.create!(
  title: "Arène du Qwentinator",
  description: "Rue du bon vivant",
  price: 55
)

Arena.create!(
  title: "Arène de le folie",
  description: "Rue dse blessés",
  price: 200
)
