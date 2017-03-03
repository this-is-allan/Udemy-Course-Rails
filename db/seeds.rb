# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cadastrando as CATEGORIAS..."
categories = [ "Animais e Acessórios",
               "Esportes",
               "Para a sua Casa",
               "Eletrônicos e Celulares",
               "Música e Hobbies",
               "Bebês e Crianças",
               "Moda e Beleza",
               "Veículos e Barcos",
               "Imóveis",
               "Empregos e Negócios"]

categories.each do |category|
  Category.find_or_create_by(description: category)
end
puts "CATEGORIAS cadastradas com sucesso!"

##################

puts "Cadastrando ADMINISTRADOR PADRÃO..."
Admin.create!(
  name: "Administrador Geral",
  email: "admin@admin.com",
  password: "123456",
  password_confirmation: "123456",
  role: 0
)
puts "ADMINISTRADOR PADRÃO cadastrado com sucesso!"
