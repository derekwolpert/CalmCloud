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
    username: "demouser1",
    password: "password1",
    display_name: "Demo User",
    city: "New York",
    country: "United States of America",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel sapien blandit, ornare eros accumsan, consequat felis. Ut interdum metus nec sem luctus sagittis. Aenean sollicitudin feugiat iaculis. Nullam cursus dapibus mauris eget gravida. Aliquam feugiat a dui eu accumsan. Proin luctus lobortis lorem quis luctus. Donec aliquet sodales venenatis. Donec eget imperdiet augue, ut egestas nunc.

Maecenas convallis sodales lectus, a faucibus nisi malesuada sed. Sed pharetra convallis ligula, a pharetra urna. Nulla eget mattis eros. Maecenas quis ultricies metus. Duis at metus urna. Ut varius at risus quis euismod. Aenean tristique eu urna a porttitor. Quisque risus massa, commodo at molestie eu, dictum sit amet tortor. Mauris aliquet consectetur placerat. Mauris convallis, neque sit amet pretium malesuada, mi metus mollis magna, eget commodo augue sem sed orci. Phasellus vestibulum eros mi, nec pellentesque odio accumsan tempor."
})
avatar1 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/profile_pics/avatar-1577909_640.png")
cover1 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/cover_photos/cover_photo1.jpg")
demo_user_1.profile_pic.attach(io: avatar1, filename: 'avatar-1.png')
demo_user_1.profile_cover.attach(io: cover1, filename: 'cover-1.jpg')

demo_user_2 = User.create!({
    email: "demo2@email.com",
    username: "hitchemp",
    password: "password2",
    display_name: "Jeanette	Holloway",
    city: "Chicago",
    country: "United States of America",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel sapien blandit, ornare eros accumsan, consequat felis. Ut interdum metus nec sem luctus sagittis. Aenean sollicitudin feugiat iaculis. Nullam cursus dapibus mauris eget gravida. Aliquam feugiat a dui eu accumsan. Proin luctus lobortis lorem quis luctus. Donec aliquet sodales venenatis. Donec eget imperdiet augue, ut egestas nunc.

Maecenas convallis sodales lectus, a faucibus nisi malesuada sed. Sed pharetra convallis ligula, a pharetra urna. Nulla eget mattis eros. Maecenas quis ultricies metus. Duis at metus urna. Ut varius at risus quis euismod. Aenean tristique eu urna a porttitor. Quisque risus massa, commodo at molestie eu, dictum sit amet tortor. Mauris aliquet consectetur placerat. Mauris convallis, neque sit amet pretium malesuada, mi metus mollis magna, eget commodo augue sem sed orci. Phasellus vestibulum eros mi, nec pellentesque odio accumsan tempor."
})
avatar2 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/profile_pics/profile_image1.jpg")
cover2 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/cover_photos/cover_photo2.jpg")
demo_user_2.profile_pic.attach(io: avatar2, filename: 'avatar-2.jpg')
demo_user_2.profile_cover.attach(io: cover2, filename: 'cover-2.jpg')

demo_user_3 = User.create!({
    email: "demo3@email.com",
    username: "anumbleo",
    password: "password3",
    display_name: "Steve Todd",
    city: "Tokyo",
    country: "Japan",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel sapien blandit, ornare eros accumsan, consequat felis. Ut interdum metus nec sem luctus sagittis. Aenean sollicitudin feugiat iaculis. Nullam cursus dapibus mauris eget gravida. Aliquam feugiat a dui eu accumsan. Proin luctus lobortis lorem quis luctus. Donec aliquet sodales venenatis. Donec eget imperdiet augue, ut egestas nunc.

Maecenas convallis sodales lectus, a faucibus nisi malesuada sed. Sed pharetra convallis ligula, a pharetra urna. Nulla eget mattis eros. Maecenas quis ultricies metus. Duis at metus urna. Ut varius at risus quis euismod. Aenean tristique eu urna a porttitor. Quisque risus massa, commodo at molestie eu, dictum sit amet tortor. Mauris aliquet consectetur placerat. Mauris convallis, neque sit amet pretium malesuada, mi metus mollis magna, eget commodo augue sem sed orci. Phasellus vestibulum eros mi, nec pellentesque odio accumsan tempor."
})
avatar3 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/profile_pics/profile_image2.jpg")
cover3 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/cover_photos/cover_photo3.jpg")
demo_user_3.profile_pic.attach(io: avatar3, filename: 'avatar-3.jpg')
demo_user_3.profile_cover.attach(io: cover3, filename: 'cover-3.jpg')

demo_user_4 = User.create!({
    email: "demo4@email.com",
    username: "erveldye",
    password: "password4",
    display_name: "Angie Lawrence",
    city: "Paris",
    country: "France",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel sapien blandit, ornare eros accumsan, consequat felis. Ut interdum metus nec sem luctus sagittis. Aenean sollicitudin feugiat iaculis. Nullam cursus dapibus mauris eget gravida. Aliquam feugiat a dui eu accumsan. Proin luctus lobortis lorem quis luctus. Donec aliquet sodales venenatis. Donec eget imperdiet augue, ut egestas nunc.

Maecenas convallis sodales lectus, a faucibus nisi malesuada sed. Sed pharetra convallis ligula, a pharetra urna. Nulla eget mattis eros. Maecenas quis ultricies metus. Duis at metus urna. Ut varius at risus quis euismod. Aenean tristique eu urna a porttitor. Quisque risus massa, commodo at molestie eu, dictum sit amet tortor. Mauris aliquet consectetur placerat. Mauris convallis, neque sit amet pretium malesuada, mi metus mollis magna, eget commodo augue sem sed orci. Phasellus vestibulum eros mi, nec pellentesque odio accumsan tempor."
})
avatar4 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/profile_pics/profile_image3.jpg")
cover4 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/cover_photos/cover_photo4.jpg")
demo_user_4.profile_pic.attach(io: avatar4, filename: 'avatar-4.jpg')
demo_user_4.profile_cover.attach(io: cover4, filename: 'cover-4.jpg')

demo_user_5 = User.create!({
    email: "demo5@email.com",
    username: "dgelsant",
    password: "password5",
    display_name: "Kirstin Preece",
    city: "Auckland",
    country: "New Zealand",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel sapien blandit, ornare eros accumsan, consequat felis. Ut interdum metus nec sem luctus sagittis. Aenean sollicitudin feugiat iaculis. Nullam cursus dapibus mauris eget gravida. Aliquam feugiat a dui eu accumsan. Proin luctus lobortis lorem quis luctus. Donec aliquet sodales venenatis. Donec eget imperdiet augue, ut egestas nunc.

Maecenas convallis sodales lectus, a faucibus nisi malesuada sed. Sed pharetra convallis ligula, a pharetra urna. Nulla eget mattis eros. Maecenas quis ultricies metus. Duis at metus urna. Ut varius at risus quis euismod. Aenean tristique eu urna a porttitor. Quisque risus massa, commodo at molestie eu, dictum sit amet tortor. Mauris aliquet consectetur placerat. Mauris convallis, neque sit amet pretium malesuada, mi metus mollis magna, eget commodo augue sem sed orci. Phasellus vestibulum eros mi, nec pellentesque odio accumsan tempor."
})
avatar5 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/profile_pics/profile_image4.jpg")
cover5 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/cover_photos/cover_photo5.jpg")
demo_user_5.profile_pic.attach(io: avatar5, filename: 'avatar-5.jpg')
demo_user_5.profile_cover.attach(io: cover5, filename: 'cover-5.jpg')

demo_user_6 = User.create!({
    email: "demo6@email.com",
    username: "ackermal",
    password: "password6",
    display_name: "Leo Hampton",
    city: "Sydney",
    country: "Australia",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel sapien blandit, ornare eros accumsan, consequat felis. Ut interdum metus nec sem luctus sagittis. Aenean sollicitudin feugiat iaculis. Nullam cursus dapibus mauris eget gravida. Aliquam feugiat a dui eu accumsan. Proin luctus lobortis lorem quis luctus. Donec aliquet sodales venenatis. Donec eget imperdiet augue, ut egestas nunc.

Maecenas convallis sodales lectus, a faucibus nisi malesuada sed. Sed pharetra convallis ligula, a pharetra urna. Nulla eget mattis eros. Maecenas quis ultricies metus. Duis at metus urna. Ut varius at risus quis euismod. Aenean tristique eu urna a porttitor. Quisque risus massa, commodo at molestie eu, dictum sit amet tortor. Mauris aliquet consectetur placerat. Mauris convallis, neque sit amet pretium malesuada, mi metus mollis magna, eget commodo augue sem sed orci. Phasellus vestibulum eros mi, nec pellentesque odio accumsan tempor."
})
avatar6 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/profile_pics/profile_image5.jpg")
demo_user_6.profile_pic.attach(io: avatar6, filename: 'avatar-6.jpg')


demo_user_7 = User.create!({
    email: "demo7@email.com",
    username: "bealcuca",
    password: "password7",
    display_name: "Sam Carson",
    city: "London",
    country: "United Kingdom",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel sapien blandit, ornare eros accumsan, consequat felis. Ut interdum metus nec sem luctus sagittis. Aenean sollicitudin feugiat iaculis. Nullam cursus dapibus mauris eget gravida. Aliquam feugiat a dui eu accumsan. Proin luctus lobortis lorem quis luctus. Donec aliquet sodales venenatis. Donec eget imperdiet augue, ut egestas nunc.

Maecenas convallis sodales lectus, a faucibus nisi malesuada sed. Sed pharetra convallis ligula, a pharetra urna. Nulla eget mattis eros. Maecenas quis ultricies metus. Duis at metus urna. Ut varius at risus quis euismod. Aenean tristique eu urna a porttitor. Quisque risus massa, commodo at molestie eu, dictum sit amet tortor. Mauris aliquet consectetur placerat. Mauris convallis, neque sit amet pretium malesuada, mi metus mollis magna, eget commodo augue sem sed orci. Phasellus vestibulum eros mi, nec pellentesque odio accumsan tempor."
})
avatar7 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/profile_pics/profile_image6.jpg")
demo_user_7.profile_pic.attach(io: avatar7, filename: 'avatar-7.jpg')


demo_user_8 = User.create!({
    email: "demo8@email.com",
    username: "araphily",
    password: "password8",
    display_name: "Bert	Spencer",
    city: "Warsaw",
    country: "Poland",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel sapien blandit, ornare eros accumsan, consequat felis. Ut interdum metus nec sem luctus sagittis. Aenean sollicitudin feugiat iaculis. Nullam cursus dapibus mauris eget gravida. Aliquam feugiat a dui eu accumsan. Proin luctus lobortis lorem quis luctus. Donec aliquet sodales venenatis. Donec eget imperdiet augue, ut egestas nunc.

Maecenas convallis sodales lectus, a faucibus nisi malesuada sed. Sed pharetra convallis ligula, a pharetra urna. Nulla eget mattis eros. Maecenas quis ultricies metus. Duis at metus urna. Ut varius at risus quis euismod. Aenean tristique eu urna a porttitor. Quisque risus massa, commodo at molestie eu, dictum sit amet tortor. Mauris aliquet consectetur placerat. Mauris convallis, neque sit amet pretium malesuada, mi metus mollis magna, eget commodo augue sem sed orci. Phasellus vestibulum eros mi, nec pellentesque odio accumsan tempor."
})
avatar8 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/profile_pics/profile_image7.jpg")
demo_user_8.profile_pic.attach(io: avatar8, filename: 'avatar-8.jpg')


demo_user_9 = User.create!({
    email: "demo9@email.com",
    username: "pliderti",
    password: "password9",
    display_name: "Vicki Torres",
    city: "Toronto",
    country: "Canada",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel sapien blandit, ornare eros accumsan, consequat felis. Ut interdum metus nec sem luctus sagittis. Aenean sollicitudin feugiat iaculis. Nullam cursus dapibus mauris eget gravida. Aliquam feugiat a dui eu accumsan. Proin luctus lobortis lorem quis luctus. Donec aliquet sodales venenatis. Donec eget imperdiet augue, ut egestas nunc.

Maecenas convallis sodales lectus, a faucibus nisi malesuada sed. Sed pharetra convallis ligula, a pharetra urna. Nulla eget mattis eros. Maecenas quis ultricies metus. Duis at metus urna. Ut varius at risus quis euismod. Aenean tristique eu urna a porttitor. Quisque risus massa, commodo at molestie eu, dictum sit amet tortor. Mauris aliquet consectetur placerat. Mauris convallis, neque sit amet pretium malesuada, mi metus mollis magna, eget commodo augue sem sed orci. Phasellus vestibulum eros mi, nec pellentesque odio accumsan tempor."
})
avatar9 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/profile_pics/profile_image8.jpg")
demo_user_9.profile_pic.attach(io: avatar9, filename: 'avatar-9.jpg')


demo_user_10 = User.create!({
    email: "demo10@email.com",
    username: "nalegise",
    password: "password10",
    display_name: "Tommy Craig",
    city: "Houston",
    country: "United States of America",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel sapien blandit, ornare eros accumsan, consequat felis. Ut interdum metus nec sem luctus sagittis. Aenean sollicitudin feugiat iaculis. Nullam cursus dapibus mauris eget gravida. Aliquam feugiat a dui eu accumsan. Proin luctus lobortis lorem quis luctus. Donec aliquet sodales venenatis. Donec eget imperdiet augue, ut egestas nunc.

Maecenas convallis sodales lectus, a faucibus nisi malesuada sed. Sed pharetra convallis ligula, a pharetra urna. Nulla eget mattis eros. Maecenas quis ultricies metus. Duis at metus urna. Ut varius at risus quis euismod. Aenean tristique eu urna a porttitor. Quisque risus massa, commodo at molestie eu, dictum sit amet tortor. Mauris aliquet consectetur placerat. Mauris convallis, neque sit amet pretium malesuada, mi metus mollis magna, eget commodo augue sem sed orci. Phasellus vestibulum eros mi, nec pellentesque odio accumsan tempor."
})
avatar10 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/profile_pics/profile_image9.jpg")
demo_user_10.profile_pic.attach(io: avatar10, filename: 'avatar-10.jpg')


demo_user_11 = User.create!({
    email: "demo11@email.com",
    username: "foublent",
    password: "password11",
    display_name: "Erik	Barrett",
    city: "Rome",
    country: "Italy",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel sapien blandit, ornare eros accumsan, consequat felis. Ut interdum metus nec sem luctus sagittis. Aenean sollicitudin feugiat iaculis. Nullam cursus dapibus mauris eget gravida. Aliquam feugiat a dui eu accumsan. Proin luctus lobortis lorem quis luctus. Donec aliquet sodales venenatis. Donec eget imperdiet augue, ut egestas nunc.

Maecenas convallis sodales lectus, a faucibus nisi malesuada sed. Sed pharetra convallis ligula, a pharetra urna. Nulla eget mattis eros. Maecenas quis ultricies metus. Duis at metus urna. Ut varius at risus quis euismod. Aenean tristique eu urna a porttitor. Quisque risus massa, commodo at molestie eu, dictum sit amet tortor. Mauris aliquet consectetur placerat. Mauris convallis, neque sit amet pretium malesuada, mi metus mollis magna, eget commodo augue sem sed orci. Phasellus vestibulum eros mi, nec pellentesque odio accumsan tempor."
})
avatar11 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/profile_pics/profile_image10.jpg")
demo_user_11.profile_pic.attach(io: avatar11, filename: 'avatar-11.jpg')


demo_user_12 = User.create!({
    email: "demo12@email.com",
    username: "basimanc",
    password: "password12",
    display_name: "Gary	Wright",
    city: "Vienna",
    country: "Austria",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel sapien blandit, ornare eros accumsan, consequat felis. Ut interdum metus nec sem luctus sagittis. Aenean sollicitudin feugiat iaculis. Nullam cursus dapibus mauris eget gravida. Aliquam feugiat a dui eu accumsan. Proin luctus lobortis lorem quis luctus. Donec aliquet sodales venenatis. Donec eget imperdiet augue, ut egestas nunc.

Maecenas convallis sodales lectus, a faucibus nisi malesuada sed. Sed pharetra convallis ligula, a pharetra urna. Nulla eget mattis eros. Maecenas quis ultricies metus. Duis at metus urna. Ut varius at risus quis euismod. Aenean tristique eu urna a porttitor. Quisque risus massa, commodo at molestie eu, dictum sit amet tortor. Mauris aliquet consectetur placerat. Mauris convallis, neque sit amet pretium malesuada, mi metus mollis magna, eget commodo augue sem sed orci. Phasellus vestibulum eros mi, nec pellentesque odio accumsan tempor."
})
avatar12 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/profile_pics/profile_image11.jpg")
demo_user_12.profile_pic.attach(io: avatar12, filename: 'avatar-12.jpg')



demo_user_13 = User.create!({
    email: "demo13@email.com",
    username: "ketishye",
    password: "password13",
    display_name: "Kate	Mccoy",
    city: "Barcelona",
    country: "Spain",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel sapien blandit, ornare eros accumsan, consequat felis. Ut interdum metus nec sem luctus sagittis. Aenean sollicitudin feugiat iaculis. Nullam cursus dapibus mauris eget gravida. Aliquam feugiat a dui eu accumsan. Proin luctus lobortis lorem quis luctus. Donec aliquet sodales venenatis. Donec eget imperdiet augue, ut egestas nunc.

Maecenas convallis sodales lectus, a faucibus nisi malesuada sed. Sed pharetra convallis ligula, a pharetra urna. Nulla eget mattis eros. Maecenas quis ultricies metus. Duis at metus urna. Ut varius at risus quis euismod. Aenean tristique eu urna a porttitor. Quisque risus massa, commodo at molestie eu, dictum sit amet tortor. Mauris aliquet consectetur placerat. Mauris convallis, neque sit amet pretium malesuada, mi metus mollis magna, eget commodo augue sem sed orci. Phasellus vestibulum eros mi, nec pellentesque odio accumsan tempor."
})
avatar13 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/profile_pics/profile_image12.jpg")
demo_user_13.profile_pic.attach(io: avatar13, filename: 'avatar-13.jpg')



demo_user_14 = User.create!({
    email: "demo14@email.com",
    username: "mertrair",
    password: "password14",
    display_name: "Evelyn Lowe",
    city: "Lima",
    country: "Peru",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel sapien blandit, ornare eros accumsan, consequat felis. Ut interdum metus nec sem luctus sagittis. Aenean sollicitudin feugiat iaculis. Nullam cursus dapibus mauris eget gravida. Aliquam feugiat a dui eu accumsan. Proin luctus lobortis lorem quis luctus. Donec aliquet sodales venenatis. Donec eget imperdiet augue, ut egestas nunc.

Maecenas convallis sodales lectus, a faucibus nisi malesuada sed. Sed pharetra convallis ligula, a pharetra urna. Nulla eget mattis eros. Maecenas quis ultricies metus. Duis at metus urna. Ut varius at risus quis euismod. Aenean tristique eu urna a porttitor. Quisque risus massa, commodo at molestie eu, dictum sit amet tortor. Mauris aliquet consectetur placerat. Mauris convallis, neque sit amet pretium malesuada, mi metus mollis magna, eget commodo augue sem sed orci. Phasellus vestibulum eros mi, nec pellentesque odio accumsan tempor."
})
avatar14 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/profile_pics/profile_image13.jpg")
demo_user_14.profile_pic.attach(io: avatar14, filename: 'avatar-14.jpg')



demo_user_15 = User.create!({
    email: "demo15@email.com",
    username: "enerince",
    password: "password15",
    display_name: "Noah	Barker",
    city: "Taipei",
    country: "Taiwan",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel sapien blandit, ornare eros accumsan, consequat felis. Ut interdum metus nec sem luctus sagittis. Aenean sollicitudin feugiat iaculis. Nullam cursus dapibus mauris eget gravida. Aliquam feugiat a dui eu accumsan. Proin luctus lobortis lorem quis luctus. Donec aliquet sodales venenatis. Donec eget imperdiet augue, ut egestas nunc.

Maecenas convallis sodales lectus, a faucibus nisi malesuada sed. Sed pharetra convallis ligula, a pharetra urna. Nulla eget mattis eros. Maecenas quis ultricies metus. Duis at metus urna. Ut varius at risus quis euismod. Aenean tristique eu urna a porttitor. Quisque risus massa, commodo at molestie eu, dictum sit amet tortor. Mauris aliquet consectetur placerat. Mauris convallis, neque sit amet pretium malesuada, mi metus mollis magna, eget commodo augue sem sed orci. Phasellus vestibulum eros mi, nec pellentesque odio accumsan tempor."
})
avatar15 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/profile_pics/profile_image14.jpg")
demo_user_15.profile_pic.attach(io: avatar15, filename: 'avatar-15.jpg')


demo_user_16 = User.create!({
    email: "demo16@email.com",
    username: "vdastiro",
    password: "password16",
    display_name: "Audrey Ray",
    city: "Prague",
    country: "Czech Republic",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel sapien blandit, ornare eros accumsan, consequat felis. Ut interdum metus nec sem luctus sagittis. Aenean sollicitudin feugiat iaculis. Nullam cursus dapibus mauris eget gravida. Aliquam feugiat a dui eu accumsan. Proin luctus lobortis lorem quis luctus. Donec aliquet sodales venenatis. Donec eget imperdiet augue, ut egestas nunc.

Maecenas convallis sodales lectus, a faucibus nisi malesuada sed. Sed pharetra convallis ligula, a pharetra urna. Nulla eget mattis eros. Maecenas quis ultricies metus. Duis at metus urna. Ut varius at risus quis euismod. Aenean tristique eu urna a porttitor. Quisque risus massa, commodo at molestie eu, dictum sit amet tortor. Mauris aliquet consectetur placerat. Mauris convallis, neque sit amet pretium malesuada, mi metus mollis magna, eget commodo augue sem sed orci. Phasellus vestibulum eros mi, nec pellentesque odio accumsan tempor."
})
avatar16 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/profile_pics/profile_image15.jpg")
demo_user_16.profile_pic.attach(io: avatar16, filename: 'avatar-16.jpg')


demo_user_17 = User.create!({
    email: "demo17@email.com",
    username: "bicusels",
    password: "password17",
    display_name: "Elsie Wilson",
    city: "San Diego",
    country: "United States of America",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel sapien blandit, ornare eros accumsan, consequat felis. Ut interdum metus nec sem luctus sagittis. Aenean sollicitudin feugiat iaculis. Nullam cursus dapibus mauris eget gravida. Aliquam feugiat a dui eu accumsan. Proin luctus lobortis lorem quis luctus. Donec aliquet sodales venenatis. Donec eget imperdiet augue, ut egestas nunc.

Maecenas convallis sodales lectus, a faucibus nisi malesuada sed. Sed pharetra convallis ligula, a pharetra urna. Nulla eget mattis eros. Maecenas quis ultricies metus. Duis at metus urna. Ut varius at risus quis euismod. Aenean tristique eu urna a porttitor. Quisque risus massa, commodo at molestie eu, dictum sit amet tortor. Mauris aliquet consectetur placerat. Mauris convallis, neque sit amet pretium malesuada, mi metus mollis magna, eget commodo augue sem sed orci. Phasellus vestibulum eros mi, nec pellentesque odio accumsan tempor."
})
avatar17 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/profile_pics/profile_image16.jpg")
demo_user_17.profile_pic.attach(io: avatar17, filename: 'avatar-17.jpg')

demo_user_18 = User.create!({
    email: "demo18@email.com",
    username: "rometice",
    password: "password18",
    display_name: "Joe Summers",
    city: "Melbourne",
    country: "Australia",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel sapien blandit, ornare eros accumsan, consequat felis. Ut interdum metus nec sem luctus sagittis. Aenean sollicitudin feugiat iaculis. Nullam cursus dapibus mauris eget gravida. Aliquam feugiat a dui eu accumsan. Proin luctus lobortis lorem quis luctus. Donec aliquet sodales venenatis. Donec eget imperdiet augue, ut egestas nunc.

Maecenas convallis sodales lectus, a faucibus nisi malesuada sed. Sed pharetra convallis ligula, a pharetra urna. Nulla eget mattis eros. Maecenas quis ultricies metus. Duis at metus urna. Ut varius at risus quis euismod. Aenean tristique eu urna a porttitor. Quisque risus massa, commodo at molestie eu, dictum sit amet tortor. Mauris aliquet consectetur placerat. Mauris convallis, neque sit amet pretium malesuada, mi metus mollis magna, eget commodo augue sem sed orci. Phasellus vestibulum eros mi, nec pellentesque odio accumsan tempor."
})
avatar18 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/profile_pics/profile_image17.jpg")
demo_user_18.profile_pic.attach(io: avatar18, filename: 'avatar-18.jpg')

demo_user_19 = User.create!({
    email: "demo19@email.com",
    username: "tawatico",
    password: "password19",
    display_name: "Shannon Page",
    city: "New York",
    country: "United States of America",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel sapien blandit, ornare eros accumsan, consequat felis. Ut interdum metus nec sem luctus sagittis. Aenean sollicitudin feugiat iaculis. Nullam cursus dapibus mauris eget gravida. Aliquam feugiat a dui eu accumsan. Proin luctus lobortis lorem quis luctus. Donec aliquet sodales venenatis. Donec eget imperdiet augue, ut egestas nunc.

Maecenas convallis sodales lectus, a faucibus nisi malesuada sed. Sed pharetra convallis ligula, a pharetra urna. Nulla eget mattis eros. Maecenas quis ultricies metus. Duis at metus urna. Ut varius at risus quis euismod. Aenean tristique eu urna a porttitor. Quisque risus massa, commodo at molestie eu, dictum sit amet tortor. Mauris aliquet consectetur placerat. Mauris convallis, neque sit amet pretium malesuada, mi metus mollis magna, eget commodo augue sem sed orci. Phasellus vestibulum eros mi, nec pellentesque odio accumsan tempor."
})
avatar19 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/profile_pics/profile_image18.jpg")
demo_user_19.profile_pic.attach(io: avatar19, filename: 'avatar-19.jpg')

demo_user_20 = User.create!({
    email: "demo20@email.com",
    username: "oductonv",
    password: "password20",
    display_name: "Nichole Burgess",
    city: "Montreal",
    country: "Canada",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel sapien blandit, ornare eros accumsan, consequat felis. Ut interdum metus nec sem luctus sagittis. Aenean sollicitudin feugiat iaculis. Nullam cursus dapibus mauris eget gravida. Aliquam feugiat a dui eu accumsan. Proin luctus lobortis lorem quis luctus. Donec aliquet sodales venenatis. Donec eget imperdiet augue, ut egestas nunc.

Maecenas convallis sodales lectus, a faucibus nisi malesuada sed. Sed pharetra convallis ligula, a pharetra urna. Nulla eget mattis eros. Maecenas quis ultricies metus. Duis at metus urna. Ut varius at risus quis euismod. Aenean tristique eu urna a porttitor. Quisque risus massa, commodo at molestie eu, dictum sit amet tortor. Mauris aliquet consectetur placerat. Mauris convallis, neque sit amet pretium malesuada, mi metus mollis magna, eget commodo augue sem sed orci. Phasellus vestibulum eros mi, nec pellentesque odio accumsan tempor."
})
avatar20 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/profile_pics/profile_image19.jpg")
demo_user_20.profile_pic.attach(io: avatar20, filename: 'avatar-20.jpg')


demo_user_21 = User.create!({
    email: "demo21@email.com",
    username: "ciblenvi",
    password: "password21",
    display_name: "Adam Page",
    city: "Cape Town",
    country: "South Africa",
    biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel sapien blandit, ornare eros accumsan, consequat felis. Ut interdum metus nec sem luctus sagittis. Aenean sollicitudin feugiat iaculis. Nullam cursus dapibus mauris eget gravida. Aliquam feugiat a dui eu accumsan. Proin luctus lobortis lorem quis luctus. Donec aliquet sodales venenatis. Donec eget imperdiet augue, ut egestas nunc.

Maecenas convallis sodales lectus, a faucibus nisi malesuada sed. Sed pharetra convallis ligula, a pharetra urna. Nulla eget mattis eros. Maecenas quis ultricies metus. Duis at metus urna. Ut varius at risus quis euismod. Aenean tristique eu urna a porttitor. Quisque risus massa, commodo at molestie eu, dictum sit amet tortor. Mauris aliquet consectetur placerat. Mauris convallis, neque sit amet pretium malesuada, mi metus mollis magna, eget commodo augue sem sed orci. Phasellus vestibulum eros mi, nec pellentesque odio accumsan tempor."
})
avatar21 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/profile_pics/profile_image20.jpg")
demo_user_21.profile_pic.attach(io: avatar21, filename: 'avatar-21.jpg')


demo_track_1 = Track.create!({
    user: demo_user_2,
    title: "Oneohtrix Point Never - Topline Demo 1 (Usher)",
    track_length: 196,
    description: "Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Point Never - Topline Demo 1 (Usher) Oneohtrix Poi"
})
track1 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack1/Topline+Demo+1+(Usher).mp3")
artwork1 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack1/Topline+Demo+1+(Usher).jpg")
demo_track_1.audio_track.attach(io: track1, filename: 'demo_track_1.mp3')
demo_track_1.track_artwork.attach(io: artwork1, filename: 'demo_track_1.jpg')

demo_track_2 = Track.create!({
    user: demo_user_1,
    title: "Janet Jackson - If (KAYTRANADA Remix)",
    track_length: 237,
    description: "Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackson - If (KAYTRANADA Remix) Janet Jackso"
})
track2 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack5/If+(KAYTRANADA+Remix).mp3")
artwork2 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack5/If+(KAYTRANADA+Remix).jpg")
demo_track_2.audio_track.attach(io: track2, filename: 'demo_track_2.mp3')
demo_track_2.track_artwork.attach(io: artwork2, filename: 'demo_track_2.jpg')

demo_track_3 = Track.create!({
    user: demo_user_5,
    title: "Jamie Woon - Blue Truth",
    track_length: 243,
    description: "Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blue Truth Jamie Woon - Blu"
})
track3 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack7/Blue+Truth.mp3")
artwork3 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack7/Blue+Truth.png")
demo_track_3.audio_track.attach(io: track3, filename: 'demo_track_3.mp3')
demo_track_3.track_artwork.attach(io: artwork3, filename: 'demo_track_3.png')

demo_track_4 = Track.create!({
    user: demo_user_1,
    title: "Asmara - Anything (feat. Alexandria)",
    track_length: 202,
    description: "Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) Asmara - Anything (feat. Alexandria) A"
})
track4 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack4/04+Anything+(feat.+Alexandria).mp3")
artwork4 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack4/Let+Ting+Go.jpg")
demo_track_4.audio_track.attach(io: track4, filename: 'demo_track_4.mp3')
demo_track_4.track_artwork.attach(io: artwork4, filename: 'demo_track_4.jpg')

demo_track_5 = Track.create!({
    user: demo_user_3,
    title: "DJ Spinn - Them Changes",
    track_length: 204,
    description: "DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them Changes DJ Spinn - Them "
})
track5 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack2/30+Them+Changes.mp3")
artwork5 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack2/Teklife+VIP+2019.jpg")
demo_track_5.audio_track.attach(io: track5, filename: 'demo_track_5.mp3')
demo_track_5.track_artwork.attach(io: artwork5, filename: 'demo_track_5.jpg')

demo_track_6 = Track.create!({
    user: demo_user_5,
    title: "Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink]",
    track_length: 202,
    description: "Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lastic Remix) [feat. Goldlink] Kelela - Rewind (Louie Lasti"
})
track6 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack3/Rewind+(Louie+Lastic+Remix)+%5Bfeat.+Goldlink%5D.mp3")
artwork6 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack3/Rewind+(Louie+Lastic+Remix)+%5Bfeat.+Goldlink%5D.jpg")
demo_track_6.audio_track.attach(io: track6, filename: 'demo_track_6.mp3')
demo_track_6.track_artwork.attach(io: artwork6, filename: 'demo_track_6.jpg')

demo_track_7 = Track.create!({
    user: demo_user_3,
    title: "DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones",
    track_length: 260,
    description: "DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan & DJ Big Hank - Love Jones DJ Paypal, DJ Taye, Boylan &"
})
track7 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/05+Love+Jones.mp3")
artwork7 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/LuckyMe_+Advent+Calendar+14+_+15.jpg")
demo_track_7.audio_track.attach(io: track7, filename: 'demo_track_7.mp3')
demo_track_7.track_artwork.attach(io: artwork7, filename: 'demo_track_7.jpg')

demo_track_8 = Track.create!({
    user: demo_user_4,
    title: "Kilo Kish - Navy",
    track_length: 193,
    description: "Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Navy Kilo Kish - Na"
})
track8 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack6/02+Navy.mp3")
artwork8 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/Seeding+Music/demotrack6/HomeSchool.jpg")
demo_track_8.audio_track.attach(io: track8, filename: 'demo_track_8.mp3')
demo_track_8.track_artwork.attach(io: artwork8, filename: 'demo_track_8.jpg')

demo_track_9 = Track.create!({
    user: demo_user_2,
    title: "DJ Paypal - Dose (feat. DJ Earl & DJ Taye)",
    track_length: 273,
    description: "DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal - Dose (feat. DJ Earl & DJ Taye) DJ Paypal -"
})
track9 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/01+Dose+(feat.+DJ+Earl+%26+DJ+Taye).mp3")
artwork9 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/Adult+Swim_+Singles+2016.jpg")
demo_track_9.audio_track.attach(io: track9, filename: 'demo_track_9.mp3')
demo_track_9.track_artwork.attach(io: artwork9, filename: 'demo_track_9.jpg')

demo_track_10 = Track.create!({
    user: demo_user_1,
    title: "Machinedrum - Want Me",
    track_length: 208,
    description: "Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedrum - Want Me Machinedru"
})
track10 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/02+Want+Me.mp3")
artwork10 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/Adult+Swim_+Singles+2014.jpg")
demo_track_10.audio_track.attach(io: track10, filename: 'demo_track_10.mp3')
demo_track_10.track_artwork.attach(io: artwork10, filename: 'demo_track_10.jpg')

demo_track_11 = Track.create!({
    user: demo_user_4,
    title: "DJ Chap - Float",
    track_length: 192,
    description: "DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap - Float DJ Chap "
})
track11 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/04+Float.mp3")
artwork11 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/Teklife+VIP.jpg")
demo_track_11.audio_track.attach(io: track11, filename: 'demo_track_11.mp3')
demo_track_11.track_artwork.attach(io: artwork11, filename: 'demo_track_11.jpg')

demo_track_12 = Track.create!({
    user: demo_user_5,
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
    user: demo_user_5,
    title: "Moses Sumney - Plastic (Live)",
    track_length: 172,
    description: "Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumney - Plastic (Live) Moses Sumn"
})
track14 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/Plastic+(Live).mp3")
artwork14 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/untitled+folder+2/Plastic+(Live).jpg")
demo_track_14.audio_track.attach(io: track14, filename: 'demo_track_14.mp3')
demo_track_14.track_artwork.attach(io: artwork14, filename: 'demo_track_14.jpg')

demo_track_15 = Track.create!({
    user: demo_user_1,
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
    user: demo_user_1
})

favorite_2 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_1,
    user: demo_user_3
})

favorite_3 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_1,
    user: demo_user_5
})

favorite_4 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_1,
    user: demo_user_8
})

favorite_5 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_1,
    user: demo_user_11
})

favorite_6 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_1,
    user: demo_user_15
})

favorite_7 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_1,
    user: demo_user_17
})

favorite_8 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_1,
    user: demo_user_20
})

favorite_9 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_1,
    user: demo_user_21
})

favorite_10 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_2,
    user: demo_user_2
})

favorite_11 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_2,
    user: demo_user_3
})

favorite_12 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_2,
    user: demo_user_4
})

favorite_13 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_2,
    user: demo_user_6
})

favorite_14 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_2,
    user: demo_user_8
})

favorite_15 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_2,
    user: demo_user_9
})

favorite_16 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_2,
    user: demo_user_13
})

favorite_17 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_2,
    user: demo_user_16
})

favorite_18 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_2,
    user: demo_user_19
})

favorite_19 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_2,
    user: demo_user_21
})

favorite_20 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_3,
    user: demo_user_2
})

favorite_21 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_3,
    user: demo_user_4
})

favorite_22 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_3,
    user: demo_user_6
})

favorite_23 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_3,
    user: demo_user_9
})

favorite_24 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_3,
    user: demo_user_11
})

favorite_25 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_3,
    user: demo_user_12
})

favorite_26 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_3,
    user: demo_user_13
})

favorite_27 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_3,
    user: demo_user_16
})

favorite_28 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_3,
    user: demo_user_19
})

favorite_29 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_4,
    user: demo_user_2
})

favorite_30 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_4,
    user: demo_user_3
})

favorite_31 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_4,
    user: demo_user_5
})
favorite_32 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_4,
    user: demo_user_7
})

favorite_33 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_4,
    user: demo_user_10
})
favorite_34 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_4,
    user: demo_user_12
})

favorite_35 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_4,
    user: demo_user_15
})

favorite_36 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_4,
    user: demo_user_18
})

favorite_37 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_4,
    user: demo_user_20
})

favorite_38 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_5,
    user: demo_user_1
})

favorite_39 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_5,
    user: demo_user_4
})

favorite_40 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_5,
    user: demo_user_8
})

favorite_41 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_5,
    user: demo_user_11
})

favorite_42 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_5,
    user: demo_user_13
})

favorite_43 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_5,
    user: demo_user_14
})

favorite_44 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_5,
    user: demo_user_18
})

favorite_45 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_5,
    user: demo_user_19
})

favorite_46 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_6,
    user: demo_user_2
})

favorite_47 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_6,
    user: demo_user_3
})

favorite_48 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_6,
    user: demo_user_6
})

favorite_49 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_6,
    user: demo_user_9
})

favorite_50 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_6,
    user: demo_user_12
})

favorite_51 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_6,
    user: demo_user_16
})

favorite_52 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_6,
    user: demo_user_17
})

favorite_53 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_6,
    user: demo_user_20
})

favorite_54 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_7,
    user: demo_user_2
})

favorite_55 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_7,
    user: demo_user_4
})

favorite_56 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_7,
    user: demo_user_7
})

favorite_57 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_7,
    user: demo_user_10
})

favorite_58 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_7,
    user: demo_user_13
})

favorite_59 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_7,
    user: demo_user_14
})

favorite_60 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_7,
    user: demo_user_18
})

favorite_61 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_7,
    user: demo_user_19
})

favorite_62 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_8,
    user: demo_user_1
})

favorite_63 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_8,
    user: demo_user_3
})

favorite_64 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_8,
    user: demo_user_5
})

favorite_65 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_8,
    user: demo_user_8
})

favorite_66 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_8,
    user: demo_user_11
})

favorite_67 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_8,
    user: demo_user_12
})

favorite_68 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_8,
    user: demo_user_15
})

favorite_69 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_8,
    user: demo_user_20
})

favorite_70 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_9,
    user: demo_user_1
})

favorite_71 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_9,
    user: demo_user_3
})

favorite_72 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_9,
    user: demo_user_9
})

favorite_73 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_9,
    user: demo_user_10
})

favorite_74 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_9,
    user: demo_user_12
})

favorite_75 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_9,
    user: demo_user_14
})

favorite_76 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_9,
    user: demo_user_17
})

favorite_77 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_9,
    user: demo_user_19
})

favorite_78 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_10,
    user: demo_user_2
})

favorite_79 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_10,
    user: demo_user_4
})

favorite_80 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_10,
    user: demo_user_7
})

favorite_81 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_10,
    user: demo_user_10
})

favorite_82 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_10,
    user: demo_user_11
})

favorite_83 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_10,
    user: demo_user_15
})

favorite_84 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_10,
    user: demo_user_18
})

favorite_85 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_10,
    user: demo_user_20
})

favorite_86 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_11,
    user: demo_user_1
})

favorite_87 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_11,
    user: demo_user_6
})

favorite_88 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_11,
    user: demo_user_8
})

favorite_89 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_11,
    user: demo_user_10
})

favorite_90 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_11,
    user: demo_user_12
})

favorite_91 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_11,
    user: demo_user_13
})

favorite_92 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_11,
    user: demo_user_14
})

favorite_93 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_11,
    user: demo_user_18
})

favorite_94 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_11,
    user: demo_user_21
})

favorite_95 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_12,
    user: demo_user_1
})

favorite_96 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_12,
    user: demo_user_3
})

favorite_97 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_12,
    user: demo_user_7
})

favorite_98 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_12,
    user: demo_user_9
})

favorite_99 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_12,
    user: demo_user_13
})

favorite_100 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_12,
    user: demo_user_15
})

favorite_101 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_12,
    user: demo_user_17
})

favorite_102 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_12,
    user: demo_user_18
})

favorite_103 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_13,
    user: demo_user_2
})

favorite_104 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_13,
    user: demo_user_4
})

favorite_105 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_13,
    user: demo_user_5
})

favorite_106 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_13,
    user: demo_user_6
})

favorite_107 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_13,
    user: demo_user_9
})

favorite_108 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_13,
    user: demo_user_11
})

favorite_109 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_13,
    user: demo_user_14
})

favorite_110 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_13,
    user: demo_user_16
})

favorite_111 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_13,
    user: demo_user_21
})

favorite_112 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_14,
    user: demo_user_1
})

favorite_113 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_14,
    user: demo_user_4
})

favorite_114 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_14,
    user: demo_user_7
})

favorite_115 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_14,
    user: demo_user_8
})

favorite_116 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_14,
    user: demo_user_12
})

favorite_117 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_14,
    user: demo_user_13
})

favorite_118 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_14,
    user: demo_user_15
})

favorite_119 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_14,
    user: demo_user_19
})

favorite_120 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_15,
    user: demo_user_3
})

favorite_121 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_15,
    user: demo_user_5
})

favorite_122 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_15,
    user: demo_user_6
})

favorite_123 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_15,
    user: demo_user_11
})

favorite_124 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_15,
    user: demo_user_14
})

favorite_125 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_15,
    user: demo_user_16
})

favorite_126 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_15,
    user: demo_user_17
})

favorite_127 = Favorite.create!({
    favorited_type: "Track",
    favorited: demo_track_15,
    user: demo_user_21
})


subscribe_1 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_2,
    user: demo_user_1
})

subscribe_2 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_4,
    user: demo_user_1
})

subscribe_3 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_5,
    user: demo_user_1
})

subscribe_4 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_18,
    user: demo_user_1
})


subscribe_5 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_1,
    user: demo_user_2
})

subscribe_6 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_3,
    user: demo_user_2
})

subscribe_7 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_5,
    user: demo_user_2
})

subscribe_8 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_14,
    user: demo_user_2
})


subscribe_9 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_2,
    user: demo_user_3
})

subscribe_10 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_4,
    user: demo_user_3
})

subscribe_11 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_5,
    user: demo_user_3
})

subscribe_12 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_7,
    user: demo_user_3
})

subscribe_13 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_1,
    user: demo_user_4
})

subscribe_14 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_2,
    user: demo_user_4
})

subscribe_15 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_5,
    user: demo_user_4
})

subscribe_16 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_11,
    user: demo_user_4
})

subscribe_17 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_15,
    user: demo_user_4
})

subscribe_18 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_2,
    user: demo_user_5
})

subscribe_19 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_3,
    user: demo_user_5
})

subscribe_20 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_9,
    user: demo_user_5
})

subscribe_21 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_3,
    user: demo_user_6
})


subscribe_22 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_4,
    user: demo_user_6
})

subscribe_23 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_5,
    user: demo_user_6
})

subscribe_24 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_10,
    user: demo_user_6
})

subscribe_25 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_12,
    user: demo_user_6
})

subscribe_26 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_1,
    user: demo_user_7
})

subscribe_27 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_4,
    user: demo_user_7
})

subscribe_28 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_6,
    user: demo_user_7
})

subscribe_29 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_18,
    user: demo_user_7
})

subscribe_30 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_2,
    user: demo_user_8
})

subscribe_31 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_3,
    user: demo_user_8
})

subscribe_32 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_5,
    user: demo_user_8
})

subscribe_33 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_13,
    user: demo_user_8
})

subscribe_34 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_19,
    user: demo_user_8
})

subscribe_35 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_1,
    user: demo_user_9
})

subscribe_36 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_2,
    user: demo_user_9
})

subscribe_37 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_8,
    user: demo_user_9
})

subscribe_38 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_16,
    user: demo_user_9
})

subscribe_39 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_2,
    user: demo_user_10
})

subscribe_41 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_4,
    user: demo_user_10
})

subscribe_42 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_5,
    user: demo_user_10
})

subscribe_43 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_12,
    user: demo_user_10
})

subscribe_44 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_16,
    user: demo_user_10
})


subscribe_45 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_1,
    user: demo_user_11
})

subscribe_46 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_3,
    user: demo_user_11
})

subscribe_47 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_6,
    user: demo_user_11
})

subscribe_48 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_13,
    user: demo_user_11
})

subscribe_49 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_3,
    user: demo_user_12
})

subscribe_50 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_4,
    user: demo_user_12
})

subscribe_51 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_9,
    user: demo_user_12
})

subscribe_52 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_15,
    user: demo_user_12
})

subscribe_53 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_3,
    user: demo_user_13
})

subscribe_54 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_4,
    user: demo_user_13
})

subscribe_55 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_9,
    user: demo_user_13
})

subscribe_56 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_15,
    user: demo_user_13
})

subscribe_57 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_1,
    user: demo_user_14
})

subscribe_58 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_5,
    user: demo_user_14
})

subscribe_59 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_10,
    user: demo_user_14
})

subscribe_60 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_20,
    user: demo_user_14
})

subscribe_61 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_1,
    user: demo_user_15
})

subscribe_62 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_3,
    user: demo_user_15
})

subscribe_63 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_4,
    user: demo_user_15
})

subscribe_64 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_11,
    user: demo_user_15
})

subscribe_65 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_2,
    user: demo_user_16
})

subscribe_66 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_5,
    user: demo_user_16
})

subscribe_67 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_17,
    user: demo_user_16
})

subscribe_68 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_1,
    user: demo_user_17
})

subscribe_69 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_4,
    user: demo_user_17
})

subscribe_70 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_8,
    user: demo_user_17
})

subscribe_71 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_3,
    user: demo_user_18
})

subscribe_72 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_5,
    user: demo_user_18
})

subscribe_73 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_14,
    user: demo_user_18
})


subscribe_74 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_1,
    user: demo_user_19
})

subscribe_75 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_4,
    user: demo_user_19
})

subscribe_76 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_5,
    user: demo_user_19
})

subscribe_77 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_17,
    user: demo_user_19
})

subscribe_78 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_1,
    user: demo_user_20
})

subscribe_79 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_4,
    user: demo_user_20
})

subscribe_80 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_5,
    user: demo_user_20
})

subscribe_81 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_7,
    user: demo_user_20
})

subscribe_82 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_1,
    user: demo_user_21
})

subscribe_83 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_2,
    user: demo_user_21
})

subscribe_84 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_3,
    user: demo_user_21
})

subscribe_85 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_4,
    user: demo_user_21
})

subscribe_86 = Subscription.create!({
    subscribed_type: "User",
    subscribed: demo_user_5,
    user: demo_user_21
})