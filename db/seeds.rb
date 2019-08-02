# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

demo_user = User.create!({
    email: "demo@email.com",
    username: "demo_user",
    password_digest: "$2a$12$uXt3LFmjVty53C85eDyZWOV/iu4FCVfdkL8nEpPgkI5btSWRbfIey",
    session_token: "wyiSd_-RUbsSDo5nEUonug",
    display_name: "Demo User"
})