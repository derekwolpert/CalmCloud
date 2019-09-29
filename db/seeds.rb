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
Favorite.destroy_all

demo_user_1 = User.create!({
    email: "demo1@email.com",
    username: "demo_user1",
    password: "password1",
    display_name: "Demo User"
})
avatar1 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/7.png")
demo_user_1.profile_pic.attach(io: avatar1, filename: 'avatar-1.png')

demo_user_2 = User.create!({
    email: "demo2@email.com",
    username: "esterusco",
    password: "password2",
    display_name: "Stefan Foster"
})
avatar2 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/6.png")
demo_user_2.profile_pic.attach(io: avatar2, filename: 'avatar-2.png')

demo_user_3 = User.create!({
    email: "demo3@email.com",
    username: "mealecred",
    password: "password3",
    display_name: "Serena Keller"
})
avatar3 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/2.png")
demo_user_3.profile_pic.attach(io: avatar3, filename: 'avatar-3.png')


demo_user_4 = User.create!({
    email: "demo4@email.com",
    username: "loidarcom",
    password: "password4",
    display_name: "Damon Sheridan"
})
avatar4 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/3.png")
demo_user_4.profile_pic.attach(io: avatar4, filename: 'avatar-4.png')

demo_user_5 = User.create!({
    email: "demo5@email.com",
    username: "ptormande",
    password: "password5",
    display_name: "Meghan Frame"
})
avatar5 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/4.png")
demo_user_5.profile_pic.attach(io: avatar5, filename: 'avatar-5.png')

demo_track_1 = Track.create!({
    user_id: demo_user_2.id,
    title: "Oneohtrix Point Never - Topline Demo 1 (Usher)",
    track_length: 196,
    description: "Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Poi"
})
track1 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack1/Topline+Demo+1+(Usher).mp3")
artwork1 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack1/Topline+Demo+1+(Usher).jpg")
demo_track_1.audio_track.attach(io: track1, filename: 'demo_track_1.mp3')
demo_track_1.track_artwork.attach(io: artwork1, filename: 'demo_track_1.jpg')

demo_track_5 = Track.create!({
    user_id: demo_user_3.id,
    title: "Janet Jackson - If (KAYTRANADA Remix)",
    track_length: 237,
    description: "Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackso"
})
track5 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack5/If+(KAYTRANADA+Remix).mp3")
artwork5 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack5/If+(KAYTRANADA+Remix).jpg")
demo_track_5.audio_track.attach(io: track5, filename: 'demo_track_5.mp3')
demo_track_5.track_artwork.attach(io: artwork5, filename: 'demo_track_5.jpg')

demo_track_3 = Track.create!({
    user_id: demo_user_4.id,
    title: "Jamie Woon - Blue Truth",
    track_length: 243,
    description: "Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blu"
})
track3 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack7/Blue+Truth.mp3")
artwork3 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack7/Blue+Truth.png")
demo_track_3.audio_track.attach(io: track3, filename: 'demo_track_3.mp3')
demo_track_3.track_artwork.attach(io: artwork3, filename: 'demo_track_3.png')

demo_track_4 = Track.create!({
    user_id: demo_user_3.id,
    title: "Asmara - Anything (feat. Alexandria)",
    track_length: 202,
    description: "Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) A"
})
track4 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack4/04+Anything+(feat.+Alexandria).mp3")
artwork4 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack4/Let+Ting+Go.jpg")
demo_track_4.audio_track.attach(io: track4, filename: 'demo_track_4.mp3')
demo_track_4.track_artwork.attach(io: artwork4, filename: 'demo_track_4.jpg')

demo_track_2 = Track.create!({
    user_id: demo_user_3.id,
    title: "DJ Spinn - Them Changes",
    track_length: 204,
    description: "DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them "
})
track2 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack2/30+Them+Changes.mp3")
artwork2 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack2/Teklife+VIP+2019.jpg")
demo_track_2.audio_track.attach(io: track2, filename: 'demo_track_2.mp3')
demo_track_2.track_artwork.attach(io: artwork2, filename: 'demo_track_2.jpg')

demo_track_7 = Track.create!({
    user_id: demo_user_2.id,
    title: "Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink]",
    track_length: 202,
    description: "Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lasti"
})
track7 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack3/Rewind+(Louie+Lastic+Remix)+%5Bfeat.+Goldlink%5D.mp3")
artwork7 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack3/Rewind+(Louie+Lastic+Remix)+%5Bfeat.+Goldlink%5D.jpg")
demo_track_7.audio_track.attach(io: track7, filename: 'demo_track_7.mp3')
demo_track_7.track_artwork.attach(io: artwork7, filename: 'demo_track_7.jpg')

demo_track_9 = Track.create!({
    user_id: demo_user_3.id,
    title: "DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones",
    track_length: 260,
    description: "DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan &"
})
track9 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/05+Love+Jones.mp3")
artwork9 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/LuckyMe_+Advent+Calendar+14+_+15.jpg")
demo_track_9.audio_track.attach(io: track9, filename: 'demo_track_9.mp3')
demo_track_9.track_artwork.attach(io: artwork9, filename: 'demo_track_9.jpg')

demo_track_6 = Track.create!({
    user_id: demo_user_5.id,
    title: "Kilo Kish - Navy",
    track_length: 193,
    description: "Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Na"
})
track6 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack6/02+Navy.mp3")
artwork6 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack6/HomeSchool.jpg")
demo_track_6.audio_track.attach(io: track6, filename: 'demo_track_6.mp3')
demo_track_6.track_artwork.attach(io: artwork6, filename: 'demo_track_6.jpg')


demo_track_11 = Track.create!({
    user_id: demo_user_5.id,
    title: "DJ Paypal - Dose (feat. DJ Earl & DJ Taye)",
    track_length: 273,
    description: "DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal -"
})
track11 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/01+Dose+(feat.+DJ+Earl+%26+DJ+Taye).mp3")
artwork11 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/Adult+Swim_+Singles+2016.jpg")
demo_track_11.audio_track.attach(io: track11, filename: 'demo_track_11.mp3')
demo_track_11.track_artwork.attach(io: artwork11, filename: 'demo_track_11.jpg')



demo_track_12 = Track.create!({
    user_id: demo_user_2.id,
    title: "Machinedrum - Want Me",
    track_length: 208,
    description: "Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedru"
})
track12 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/02+Want+Me.mp3")
artwork12 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/Adult+Swim_+Singles+2014.jpg")
demo_track_12.audio_track.attach(io: track12, filename: 'demo_track_12.mp3')
demo_track_12.track_artwork.attach(io: artwork12, filename: 'demo_track_12.jpg')



demo_track_13 = Track.create!({
    user_id: demo_user_4.id,
    title: "DJ Chap - Float",
    track_length: 192,
    description: "DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap "
})
track13 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/04+Float.mp3")
artwork13 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/Teklife+VIP.jpg")
demo_track_13.audio_track.attach(io: track13, filename: 'demo_track_13.mp3')
demo_track_13.track_artwork.attach(io: artwork13, filename: 'demo_track_13.jpg')





demo_track_14 = Track.create!({
    user_id: demo_user_5.id,
    title: "Cassie - All My Love (Kingdom Edit)",
    track_length: 218,
    description: "Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdo"
})
track14 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/All+My+Love+(Kingdom+Edit).mp3")
artwork14 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/All+My+Love+(Kingdom+Edit).png")
demo_track_14.audio_track.attach(io: track14, filename: 'demo_track_14.mp3')
demo_track_14.track_artwork.attach(io: artwork14, filename: 'demo_track_14.png')

demo_track_15 = Track.create!({
    user_id: demo_user_3.id,
    title: "Spinee - Hell Hound",
    track_length: 138,
    description: "Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound "
})
track15 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/Hell+Hound.mp3")
artwork15 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/Hell+Hound.jpg")
demo_track_15.audio_track.attach(io: track15, filename: 'demo_track_15.mp3')
demo_track_15.track_artwork.attach(io: artwork15, filename: 'demo_track_15.jpg')


demo_track_16 = Track.create!({
    user_id: demo_user_2.id,
    title: "Moses Sumney - Plastic (Live)",
    track_length: 172,
    description: "Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumn"
})
track16 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/Plastic+(Live).mp3")
artwork16 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/Plastic+(Live).jpg")
demo_track_16.audio_track.attach(io: track16, filename: 'demo_track_16.mp3')
demo_track_16.track_artwork.attach(io: artwork16, filename: 'demo_track_16.jpg')





demo_track_17 = Track.create!({
    user_id: demo_user_4.id,
    title: "Syd - Treading Water",
    track_length: 180,
    description: "Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treadin"
})
track17 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/Treading+Water.mp3")
artwork17 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/Treading+Water.jpg")
demo_track_17.audio_track.attach(io: track17, filename: 'demo_track_17.mp3')
demo_track_17.track_artwork.attach(io: artwork17, filename: 'demo_track_17.jpg')