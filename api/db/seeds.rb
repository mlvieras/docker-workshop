# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Product.count == 0
  product_data = [
    {
      name: 'Heladera',
      description: 'Enfría cosas',
      price: 45_234
    },
    {
      name: 'Televisión',
      description: 'Es como una ventana a mil realidades diferentes, pero nada que ver.',
      price: 20_324
    },
    {
      name: 'Horno',
      description: 'Calienta cosas',
      price: 1000
    },
    {
      name: 'Freidora sin aceinte',
      description: 'Calienta cosas, pero sin aceite',
      price: 5000
    },
    {
      name: 'Equipo de audio',
      description: 'Emite sonidos',
      price: 4000
    },
  ]

  product_data.each { |data| Product.create(data) }
end
