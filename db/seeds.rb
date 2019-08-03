# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

demo1 = User.create!({
    email: "demo1@email.com",
    username: "demo_user_1",
    password_digest: "$2a$12$78PLmmtQZE0mcB2tEGQMceugvnd79N4gtZTQT5br/AbE0YqpAyUOu",
    session_token: "T-LA4ckXdJJvxJnm9kG4xA",
    display_name: "John Doe"
})

# password: password1

demo2 = User.create!({
    email: "demo2@email.com",
    username: "demo_user_2",
    password_digest: "$2a$12$0kMSrVub9Nln35XXrQrdl.8uMNSmcJBZyGRLqoXJBorT00K4AA6YC",
    session_token: "C9s2fz9YtyUT-OUnGp7jOw",
    display_name: "Jane Doe"
})

# password: password2