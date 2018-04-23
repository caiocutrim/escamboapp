# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cadastrando as categorias"
categories = [
  "Animails e acessorios",
  "Esportes",
  "Para a sua casa",
  "Celulares e Eletronicos",
  "Musicas e hobbies",
  "Moda e beleza",
  "Veiculos e barcos",
  "Imoveis",
  "Empregos e negocios",
]
categories.each do |category|
  Category.find_or_create_by(description: category)
end
puts "Cadastrando as categorias [Ok]..."

puts "Cadastrando o adminstrador padrao"
Admin.create!(
  email: "admin@admin.com",
  name: "Admin",
  password: "secret",
  password_confirmation: "secret")
puts "Cadastrando o adminstrador padrao [Ok]..."
