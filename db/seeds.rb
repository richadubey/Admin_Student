# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

# Role.create(name: :admin)
Role.create(name: :user)
# user1 = User.create(username: 'Richa',
# 								    email: 'richayuvasoft251@gmail.com',
# 								    password: '12345678',
# 								    password_confirmation: '12345678')
# user1.add_role(:admin)

