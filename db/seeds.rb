# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
srand(420)

Carrete.delete_all
Servicio.delete_all
Ticket.delete_all
Intere.delete_all
User.delete_all
Comuna.delete_all

comunas = [
    'La Granja',
    'Penalolen',
    'Quilicura',
    'Huechuraba',
    'Puente Alto',
    'La Florida',
    'Macul'
]

comunas.each do |comuna|
    Comuna.create(
        comuna: comuna
    )
end

comuna1 = Comuna.create! :comuna => 'Santiago Centro'

admin = User.create! :username => 'admin', :comuna => comuna1, :email => 'a@amdin.cl', :password => 'adminadmin', :password_confirmation => 'adminadmin', :role => 2

100.times do
    clave = (0...8).map { (65 + rand(26)).chr }.join
    User.create(
        username: Faker::Name.first_name,
        comuna: Comuna.all.sample,
        email: Faker::Internet.email,
        # admin: false,
        password: clave,
        password_confirmation: clave
    )
end
5.times do
    Servicio.create(
        user_id: User.all.sample.id,
        nombre: Faker::Restaurant.name,
        descripcion: Faker::Restaurant.description,
        categoria: "Comidas",
        approved: true
    )
end
5.times do
    Servicio.create(
        user_id: User.all.sample.id,
        nombre: Faker::Company.name,
        descripcion: Faker::Company.bs,
        categoria: ['Bebidas', 'Música', 'Limpieza'].sample,
        approved: true
    )
end
10.times do
    Carrete.create(
        user_id: User.all.sample.id,
        nombre: Faker::App.name,
        direccion: Faker::Address.street_address,
        max_asistentes: rand(20..100),
        approved: true,
        monto_minimo: rand(30000...200000),
    )
end
20.times do
   Review.create(
       servicio: Servicio.all.sample,
       user_id: User.all.sample.id,
       rating: [1,2,3,4,5].sample,
       comment: Faker::Restaurant.review
   ) 
end