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
Subscription.destroy_all

demo_user_1 = User.create!({
    email: "demo1@email.com",
    username: "demo_user1",
    password: "password1",
    display_name: "Demo User",
    city: "New York City",
    country: "United States",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel sapien blandit, ornare eros accumsan, consequat felis. Ut interdum metus nec sem luctus sagittis. Aenean sollicitudin feugiat iaculis. Nullam cursus dapibus mauris eget gravida. Aliquam feugiat a dui eu accumsan. Proin luctus lobortis lorem quis luctus. Donec aliquet sodales venenatis. Donec eget imperdiet augue, ut egestas nunc.

Maecenas convallis sodales lectus, a faucibus nisi malesuada sed. Sed pharetra convallis ligula, a pharetra urna. Nulla eget mattis eros. Maecenas quis ultricies metus. Duis at metus urna. Ut varius at risus quis euismod. Aenean tristique eu urna a porttitor. Quisque risus massa, commodo at molestie eu, dictum sit amet tortor. Mauris aliquet consectetur placerat. Mauris convallis, neque sit amet pretium malesuada, mi metus mollis magna, eget commodo augue sem sed orci. Phasellus vestibulum eros mi, nec pellentesque odio accumsan tempor."
})
avatar1 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/7.png")
cover1 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/cover_photos/cover_photo1.jpg")
demo_user_1.profile_pic.attach(io: avatar1, filename: 'avatar-1.png')
demo_user_1.profile_cover.attach(io: cover1, filename: 'cover-1.jpg')

demo_user_2 = User.create!({
    email: "demo2@email.com",
    username: "esterusco",
    password: "password2",
    display_name: "Stefan Foster",
    city: "Chicago",
    country: "United States",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel sapien blandit, ornare eros accumsan, consequat felis. Ut interdum metus nec sem luctus sagittis. Aenean sollicitudin feugiat iaculis. Nullam cursus dapibus mauris eget gravida. Aliquam feugiat a dui eu accumsan. Proin luctus lobortis lorem quis luctus. Donec aliquet sodales venenatis. Donec eget imperdiet augue, ut egestas nunc.

Maecenas convallis sodales lectus, a faucibus nisi malesuada sed. Sed pharetra convallis ligula, a pharetra urna. Nulla eget mattis eros. Maecenas quis ultricies metus. Duis at metus urna. Ut varius at risus quis euismod. Aenean tristique eu urna a porttitor. Quisque risus massa, commodo at molestie eu, dictum sit amet tortor. Mauris aliquet consectetur placerat. Mauris convallis, neque sit amet pretium malesuada, mi metus mollis magna, eget commodo augue sem sed orci. Phasellus vestibulum eros mi, nec pellentesque odio accumsan tempor."
})
avatar2 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/6.png")
cover2 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/cover_photos/cover_photo2.jpg")
demo_user_2.profile_pic.attach(io: avatar2, filename: 'avatar-2.png')
demo_user_2.profile_cover.attach(io: cover2, filename: 'cover-2.jpg')

demo_user_3 = User.create!({
    email: "demo3@email.com",
    username: "mealecred",
    password: "password3",
    display_name: "Serena Keller",
    city: "Tokyo",
    country: "Japan",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel sapien blandit, ornare eros accumsan, consequat felis. Ut interdum metus nec sem luctus sagittis. Aenean sollicitudin feugiat iaculis. Nullam cursus dapibus mauris eget gravida. Aliquam feugiat a dui eu accumsan. Proin luctus lobortis lorem quis luctus. Donec aliquet sodales venenatis. Donec eget imperdiet augue, ut egestas nunc.

Maecenas convallis sodales lectus, a faucibus nisi malesuada sed. Sed pharetra convallis ligula, a pharetra urna. Nulla eget mattis eros. Maecenas quis ultricies metus. Duis at metus urna. Ut varius at risus quis euismod. Aenean tristique eu urna a porttitor. Quisque risus massa, commodo at molestie eu, dictum sit amet tortor. Mauris aliquet consectetur placerat. Mauris convallis, neque sit amet pretium malesuada, mi metus mollis magna, eget commodo augue sem sed orci. Phasellus vestibulum eros mi, nec pellentesque odio accumsan tempor."
})
avatar3 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/2.png")
cover3 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/cover_photos/cover_photo3.jpg")
demo_user_3.profile_pic.attach(io: avatar3, filename: 'avatar-3.png')
demo_user_3.profile_cover.attach(io: cover3, filename: 'cover-3.jpg')

demo_user_4 = User.create!({
    email: "demo4@email.com",
    username: "loidarcom",
    password: "password4",
    display_name: "Damon Sheridan",
    city: "Paris",
    country: "France",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel sapien blandit, ornare eros accumsan, consequat felis. Ut interdum metus nec sem luctus sagittis. Aenean sollicitudin feugiat iaculis. Nullam cursus dapibus mauris eget gravida. Aliquam feugiat a dui eu accumsan. Proin luctus lobortis lorem quis luctus. Donec aliquet sodales venenatis. Donec eget imperdiet augue, ut egestas nunc.

Maecenas convallis sodales lectus, a faucibus nisi malesuada sed. Sed pharetra convallis ligula, a pharetra urna. Nulla eget mattis eros. Maecenas quis ultricies metus. Duis at metus urna. Ut varius at risus quis euismod. Aenean tristique eu urna a porttitor. Quisque risus massa, commodo at molestie eu, dictum sit amet tortor. Mauris aliquet consectetur placerat. Mauris convallis, neque sit amet pretium malesuada, mi metus mollis magna, eget commodo augue sem sed orci. Phasellus vestibulum eros mi, nec pellentesque odio accumsan tempor."
})
avatar4 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/3.png")
cover4 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/cover_photos/cover_photo4.jpg")
demo_user_4.profile_pic.attach(io: avatar4, filename: 'avatar-4.png')
demo_user_4.profile_cover.attach(io: cover4, filename: 'cover-4.jpg')

demo_user_5 = User.create!({
    email: "demo5@email.com",
    username: "ptormande",
    password: "password5",
    display_name: "Meghan Frame",
    city: "Auckland",
    country: "New Zealand",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel sapien blandit, ornare eros accumsan, consequat felis. Ut interdum metus nec sem luctus sagittis. Aenean sollicitudin feugiat iaculis. Nullam cursus dapibus mauris eget gravida. Aliquam feugiat a dui eu accumsan. Proin luctus lobortis lorem quis luctus. Donec aliquet sodales venenatis. Donec eget imperdiet augue, ut egestas nunc.

Maecenas convallis sodales lectus, a faucibus nisi malesuada sed. Sed pharetra convallis ligula, a pharetra urna. Nulla eget mattis eros. Maecenas quis ultricies metus. Duis at metus urna. Ut varius at risus quis euismod. Aenean tristique eu urna a porttitor. Quisque risus massa, commodo at molestie eu, dictum sit amet tortor. Mauris aliquet consectetur placerat. Mauris convallis, neque sit amet pretium malesuada, mi metus mollis magna, eget commodo augue sem sed orci. Phasellus vestibulum eros mi, nec pellentesque odio accumsan tempor."
})
avatar5 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/4.png")
cover5 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/cover_photos/cover_photo5.jpg")
demo_user_5.profile_pic.attach(io: avatar5, filename: 'avatar-5.png')
demo_user_5.profile_cover.attach(io: cover5, filename: 'cover-5.jpg')

demo_track_1 = Track.create!({
    user: demo_user_1,
    title: "Oneohtrix Point Never - Topline Demo 1 (Usher)",
    track_length: 196,
    description: "Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Poi"
})
track1 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack1/Topline+Demo+1+(Usher).mp3")
artwork1 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack1/Topline+Demo+1+(Usher).jpg")
demo_track_1.audio_track.attach(io: track1, filename: 'demo_track_1.mp3')
demo_track_1.track_artwork.attach(io: artwork1, filename: 'demo_track_1.jpg')

demo_track_2 = Track.create!({
    user: demo_user_2,
    title: "Janet Jackson - If (KAYTRANADA Remix)",
    track_length: 237,
    description: "Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackso"
})
track2 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack5/If+(KAYTRANADA+Remix).mp3")
artwork2 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack5/If+(KAYTRANADA+Remix).jpg")
demo_track_2.audio_track.attach(io: track2, filename: 'demo_track_2.mp3')
demo_track_2.track_artwork.attach(io: artwork2, filename: 'demo_track_2.jpg')

demo_track_3 = Track.create!({
    user: demo_user_3,
    title: "Jamie Woon - Blue Truth",
    track_length: 243,
    description: "Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blu"
})
track3 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack7/Blue+Truth.mp3")
artwork3 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack7/Blue+Truth.png")
demo_track_3.audio_track.attach(io: track3, filename: 'demo_track_3.mp3')
demo_track_3.track_artwork.attach(io: artwork3, filename: 'demo_track_3.png')

demo_track_4 = Track.create!({
    user: demo_user_4,
    title: "Asmara - Anything (feat. Alexandria)",
    track_length: 202,
    description: "Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) A"
})
track4 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack4/04+Anything+(feat.+Alexandria).mp3")
artwork4 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack4/Let+Ting+Go.jpg")
demo_track_4.audio_track.attach(io: track4, filename: 'demo_track_4.mp3')
demo_track_4.track_artwork.attach(io: artwork4, filename: 'demo_track_4.jpg')

demo_track_5 = Track.create!({
    user: demo_user_5,
    title: "DJ Spinn - Them Changes",
    track_length: 204,
    description: "DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them "
})
track5 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack2/30+Them+Changes.mp3")
artwork5 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack2/Teklife+VIP+2019.jpg")
demo_track_5.audio_track.attach(io: track5, filename: 'demo_track_5.mp3')
demo_track_5.track_artwork.attach(io: artwork5, filename: 'demo_track_5.jpg')

demo_track_6 = Track.create!({
    user: demo_user_1,
    title: "Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink]",
    track_length: 202,
    description: "Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lasti"
})
track6 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack3/Rewind+(Louie+Lastic+Remix)+%5Bfeat.+Goldlink%5D.mp3")
artwork6 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack3/Rewind+(Louie+Lastic+Remix)+%5Bfeat.+Goldlink%5D.jpg")
demo_track_6.audio_track.attach(io: track6, filename: 'demo_track_6.mp3')
demo_track_6.track_artwork.attach(io: artwork6, filename: 'demo_track_6.jpg')

demo_track_7 = Track.create!({
    user: demo_user_2,
    title: "DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones",
    track_length: 260,
    description: "DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan &"
})
track7 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/05+Love+Jones.mp3")
artwork7 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/LuckyMe_+Advent+Calendar+14+_+15.jpg")
demo_track_7.audio_track.attach(io: track7, filename: 'demo_track_7.mp3')
demo_track_7.track_artwork.attach(io: artwork7, filename: 'demo_track_7.jpg')

demo_track_8 = Track.create!({
    user: demo_user_3,
    title: "Kilo Kish - Navy",
    track_length: 193,
    description: "Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Na"
})
track8 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack6/02+Navy.mp3")
artwork8 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack6/HomeSchool.jpg")
demo_track_8.audio_track.attach(io: track8, filename: 'demo_track_8.mp3')
demo_track_8.track_artwork.attach(io: artwork8, filename: 'demo_track_8.jpg')

demo_track_9 = Track.create!({
    user: demo_user_4,
    title: "DJ Paypal - Dose (feat. DJ Earl & DJ Taye)",
    track_length: 273,
    description: "DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal -"
})
track9 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/01+Dose+(feat.+DJ+Earl+%26+DJ+Taye).mp3")
artwork9 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/Adult+Swim_+Singles+2016.jpg")
demo_track_9.audio_track.attach(io: track9, filename: 'demo_track_9.mp3')
demo_track_9.track_artwork.attach(io: artwork9, filename: 'demo_track_9.jpg')

demo_track_10 = Track.create!({
    user: demo_user_5,
    title: "Machinedrum - Want Me",
    track_length: 208,
    description: "Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedru"
})
track10 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/02+Want+Me.mp3")
artwork10 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/Adult+Swim_+Singles+2014.jpg")
demo_track_10.audio_track.attach(io: track10, filename: 'demo_track_10.mp3')
demo_track_10.track_artwork.attach(io: artwork10, filename: 'demo_track_10.jpg')

demo_track_11 = Track.create!({
    user: demo_user_1,
    title: "DJ Chap - Float",
    track_length: 192,
    description: "DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap "
})
track11 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/04+Float.mp3")
artwork11 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/Teklife+VIP.jpg")
demo_track_11.audio_track.attach(io: track11, filename: 'demo_track_11.mp3')
demo_track_11.track_artwork.attach(io: artwork11, filename: 'demo_track_11.jpg')

demo_track_12 = Track.create!({
    user: demo_user_2,
    title: "Cassie - All My Love (Kingdom Edit)",
    track_length: 218,
    description: "Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdom Edit) Cassie - All My Love (Kingdo"
})
track12 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/All+My+Love+(Kingdom+Edit).mp3")
artwork12 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/All+My+Love+(Kingdom+Edit).png")
demo_track_12.audio_track.attach(io: track12, filename: 'demo_track_12.mp3')
demo_track_12.track_artwork.attach(io: artwork12, filename: 'demo_track_12.png')

demo_track_13 = Track.create!({
    user: demo_user_3,
    title: "Spinee - Hell Hound",
    track_length: 138,
    description: "Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound Spinee - Hell Hound "
})
track13 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/Hell+Hound.mp3")
artwork13 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/Hell+Hound.jpg")
demo_track_13.audio_track.attach(io: track13, filename: 'demo_track_13.mp3')
demo_track_13.track_artwork.attach(io: artwork13, filename: 'demo_track_13.jpg')


demo_track_14 = Track.create!({
    user: demo_user_4,
    title: "Moses Sumney - Plastic (Live)",
    track_length: 172,
    description: "Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumn"
})
track14 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/Plastic+(Live).mp3")
artwork14 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/Plastic+(Live).jpg")
demo_track_14.audio_track.attach(io: track14, filename: 'demo_track_14.mp3')
demo_track_14.track_artwork.attach(io: artwork14, filename: 'demo_track_14.jpg')

demo_track_15 = Track.create!({
    user: demo_user_5,
    title: "Syd - Treading Water",
    track_length: 180,
    description: "Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treading Water Syd - Treadin"
})
track15 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/Treading+Water.mp3")
artwork15 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/Treading+Water.jpg")
demo_track_15.audio_track.attach(io: track15, filename: 'demo_track_15.mp3')
demo_track_15.track_artwork.attach(io: artwork15, filename: 'demo_track_15.jpg')

favorite_1 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_1,
    user: demo_user_2
})

favorite_2 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_1,
    user: demo_user_3
})

favorite_3 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_1,
    user: demo_user_4
})

favorite_4 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_2,
    user: demo_user_3
})

favorite_5 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_2,
    user: demo_user_4
})

favorite_6 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_2,
    user: demo_user_5
})

favorite_7 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_3,
    user: demo_user_4
})

favorite_8 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_3,
    user: demo_user_5
})

favorite_9 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_3,
    user: demo_user_1
})

favorite_10 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_4,
    user: demo_user_5
})

favorite_11 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_4,
    user: demo_user_1
})

favorite_12 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_4,
    user: demo_user_2
})
favorite_13 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_5,
    user: demo_user_1
})
favorite_14 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_5,
    user: demo_user_2
})

favorite_15 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_5,
    user: demo_user_3
})

favorite_16 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_6,
    user: demo_user_3
})

favorite_17 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_6,
    user: demo_user_4
})

favorite_18 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_6,
    user: demo_user_5
})

favorite_19 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_7,
    user: demo_user_4
})

favorite_20 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_7,
    user: demo_user_5
})

favorite_21 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_7,
    user: demo_user_1
})

favorite_22 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_8,
    user: demo_user_5
})

favorite_23 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_8,
    user: demo_user_1
})

favorite_24 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_8,
    user: demo_user_2
})

favorite_25 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_9,
    user: demo_user_1
})

favorite_26 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_9,
    user: demo_user_2
})

favorite_27 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_9,
    user: demo_user_3
})
favorite_28 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_10,
    user: demo_user_2
})
favorite_29 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_10,
    user: demo_user_3
})

favorite_30 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_10,
    user: demo_user_4
})


favorite_31 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_11,
    user: demo_user_4,
})

favorite_32 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_11,
    user: demo_user_5
})

favorite_33 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_11,
    user: demo_user_1
})

favorite_34 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_12,
    user: demo_user_5
})

favorite_35 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_12,
    user: demo_user_1
})

favorite_36 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_12,
    user: demo_user_2
})

favorite_37 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_13,
    user: demo_user_1
})

favorite_38 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_13,
    user: demo_user_2
})

favorite_39 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_13,
    user: demo_user_3
})

favorite_40 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_14,
    user: demo_user_2
})

favorite_41 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_14,
    user: demo_user_3
})

favorite_42 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_14,
    user: demo_user_4
})
favorite_43 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_15,
    user: demo_user_3
})
favorite_44 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_15,
    user: demo_user_4
})

favorite_45 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_15,
    user: demo_user_5
})

subscribe_1 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_1,
    user: demo_user_5
})

subscribe_2 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_1,
    user: demo_user_4
})

subscribe_3 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_1,
    user: demo_user_3
})

subscribe_4 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_2,
    user: demo_user_1
})
subscribe_5 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_2,
    user: demo_user_5
})

subscribe_6 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_2,
    user: demo_user_4
})

subscribe_7 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_3,
    user: demo_user_2
})

subscribe_8 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_3,
    user: demo_user_1
})

subscribe_9 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_3,
    user: demo_user_5
})

subscribe_10 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_4,
    user: demo_user_3
})

subscribe_11 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_4,
    user: demo_user_2
})

subscribe_12 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_4,
    user: demo_user_1
})

subscribe_13 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_5,
    user: demo_user_4
})

subscribe_14 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_5,
    user: demo_user_3
})

subscribe_15 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_5,
    user: demo_user_2
})