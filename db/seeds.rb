# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

User.destroy_all
Track.destroy_all

demo_user_1 = User.create!({
    email: "demo1@email.com",
    username: "demo_user_1",
    password_digest: "$2a$12$78PLmmtQZE0mcB2tEGQMceugvnd79N4gtZTQT5br/AbE0YqpAyUOu",
    session_token: "T-LA4ckXdJJvxJnm9kG4xA",
    display_name: "Dominick Crosby"
})

# password: password1

avatar1 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/7.png")
demo_user_1.profile_pic.attach(io: avatar1, filename: 'avatar-1.png')

demo_user_2 = User.create!({
    email: "demo2@email.com",
    username: "demo_user_2",
    password_digest: "$2a$12$0kMSrVub9Nln35XXrQrdl.8uMNSmcJBZyGRLqoXJBorT00K4AA6YC",
    session_token: "C9s2fz9YtyUT-OUnGp7jOw",
    display_name: "Cobie Mack"
})

# password: password2

avatar2 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/6.png")
demo_user_2.profile_pic.attach(io: avatar2, filename: 'avatar-2.png')

demo_track_1 = Track.create!({
    user_id: demo_user_1.id,
    title: "Oneohtrix Point Never - Topline Demo 1 (Usher)",
    track_length: 196,
    play_count: 52,
})

track1 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack1/Topline+Demo+1+(Usher).mp3")
artwork1 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack1/Topline+Demo+1+(Usher).jpg")

demo_track_1.audio_track.attach(io: track1, filename: 'demo_track_1.mp3')
demo_track_1.track_artwork.attach(io: artwork1, filename: 'demo_track_1.jpg')

demo_track_5 = Track.create!({
    user_id: demo_user_2.id,
    title: "Janet Jackson - If (KAYTRANADA Remix)",
    track_length: 237,
    play_count: 52,
})

track5 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack5/If+(KAYTRANADA+Remix).mp3")
artwork5 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack5/If+(KAYTRANADA+Remix).jpg")

demo_track_3 = Track.create!({
    user_id: demo_user_1.id,
    title: "Jamie Woon - Blue Truth",
    track_length: 243,
    play_count: 52,
})

track3 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack7/Blue+Truth.mp3")
artwork3 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack7/Blue+Truth.png")

demo_track_3.audio_track.attach(io: track3, filename: 'demo_track_3.mp3')
demo_track_3.track_artwork.attach(io: artwork3, filename: 'demo_track_3.png')


demo_track_4 = Track.create!({
    user_id: demo_user_1.id,
    title: "Asmara - Anything (feat. Alexandria)",
    track_length: 202,
    play_count: 73,
})

track4 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack4/04+Anything+(feat.+Alexandria).mp3")
artwork4 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack4/Let+Ting+Go.jpg")

demo_track_4.audio_track.attach(io: track4, filename: 'demo_track_4.mp3')
demo_track_4.track_artwork.attach(io: artwork4, filename: 'demo_track_4.jpg')


demo_track_5.audio_track.attach(io: track5, filename: 'demo_track_5.mp3')
demo_track_5.track_artwork.attach(io: artwork5, filename: 'demo_track_5.jpg')

demo_track_6 = Track.create!({
    user_id: demo_user_2.id,
    title: "Kilo Kish - Navy",
    track_length: 193,
    play_count: 73,
})

track6 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack6/02+Navy.mp3")
artwork6 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack6/HomeSchool.jpg")

demo_track_6.audio_track.attach(io: track6, filename: 'demo_track_6.mp3')
demo_track_6.track_artwork.attach(io: artwork6, filename: 'demo_track_6.jpg')



demo_track_7 = Track.create!({
    user_id: demo_user_2.id,
    title: "Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink]",
    track_length: 202,
    play_count: 52,
})

track7 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack3/Rewind+(Louie+Lastic+Remix)+%5Bfeat.+Goldlink%5D.mp3")
artwork7 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack3/Rewind+(Louie+Lastic+Remix)+%5Bfeat.+Goldlink%5D.jpg")

demo_track_7.audio_track.attach(io: track7, filename: 'demo_track_7.mp3')
demo_track_7.track_artwork.attach(io: artwork7, filename: 'demo_track_7.jpg')

demo_track_2 = Track.create!({
    user_id: demo_user_1.id,
    title: "DJ Spinn - Them Changes",
    track_length: 204,
    play_count: 73,
})

track2 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack2/30+Them+Changes.mp3")
artwork2 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack2/Teklife+VIP+2019.jpg")

demo_track_2.audio_track.attach(io: track2, filename: 'demo_track_2.mp3')
demo_track_2.track_artwork.attach(io: artwork2, filename: 'demo_track_2.jpg')