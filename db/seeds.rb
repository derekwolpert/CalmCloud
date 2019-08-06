# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Track.destroy_all

demo_user_1 = User.create!({
    email: "demo1@email.com",
    username: "demo_user_1",
    password_digest: "$2a$12$78PLmmtQZE0mcB2tEGQMceugvnd79N4gtZTQT5br/AbE0YqpAyUOu",
    session_token: "T-LA4ckXdJJvxJnm9kG4xA",
    display_name: "John Doe"
})

# password: password1

demo_user_2 = User.create!({
    email: "demo2@email.com",
    username: "demo_user_2",
    password_digest: "$2a$12$0kMSrVub9Nln35XXrQrdl.8uMNSmcJBZyGRLqoXJBorT00K4AA6YC",
    session_token: "C9s2fz9YtyUT-OUnGp7jOw",
    display_name: "Jane Doe"
})

# password: password2


demo_track_1 = Track.create!({
    user_id: demo_user_1.id,
    title: "Demo Track 1",
    track_length: 120,
    play_count: 52,
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ornare eros eu nibh faucibus, at feugiat odio imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia.",
})

demo_track_2 = Track.create!({
    user_id: demo_user_2.id,
    title: "Demo Track 2",
    track_length: 240,
    play_count: 73,
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ornare eros eu nibh faucibus, at feugiat odio imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia.",
})