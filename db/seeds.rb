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
Comment.destroy_all

demo_user_1 = User.create!({
    email: "demo1@email.com",
    username: "demouser1",
    password: "password1",
    display_name: "Demo User",
    city: "New York",
    country: "United States of America",
    biography: "Maecenas massa magna, viverra ut porta vitae, viverra vel purus. Nullam id est et lorem varius aliquam. In eget ipsum vestibulum, placerat mauris sit amet, scelerisque libero. Nam posuere molestie nulla. Sed eget augue nec lorem gravida imperdiet. Cras malesuada metus turpis, at cursus orci scelerisque non. Ut in cursus turpis.

Proin dapibus elit in massa sagittis varius. Sed ligula purus, lacinia vel tortor eu, volutpat elementum velit. Suspendisse ornare risus velit, et aliquet dui cursus vel. Mauris vitae diam ac felis facilisis fermentum vitae ac nulla. Suspendisse potenti. Quisque tempus felis at lobortis commodo. Praesent ut interdum ante. Morbi luctus justo justo, et consectetur purus sagittis ut. Vestibulum non leo arcu. Duis porttitor lacinia ullamcorper. Nullam dignissim elit orci."
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
    biography: "Mauris ut ultricies ligula. Cras sit amet gravida magna. Praesent volutpat nec ex ac ultricies. Duis maximus commodo magna ac dictum. Quisque ornare dictum tortor at convallis. Donec sodales ante ullamcorper molestie consectetur. Etiam maximus magna mauris, non fermentum sem pretium nec. Aenean in quam orci. Pellentesque dictum a urna vitae placerat.

Pellentesque facilisis, tortor et lobortis facilisis, tellus quam lobortis lacus, eu suscipit lorem lectus a lorem. Duis nisl ligula, convallis vitae varius at, luctus ut sem. Curabitur vel auctor ante. In vitae mauris eu nisl ullamcorper tincidunt. Nullam efficitur libero id elementum semper. Morbi eu hendrerit risus. Mauris et ornare nisl. In vestibulum viverra vehicula. Morbi varius ultrices augue. In a leo eget mi sagittis feugiat tincidunt vel."
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
    biography: "Sed a tortor ac nisi rhoncus facilisis ac eu enim. In imperdiet tincidunt ligula, vitae sagittis elit congue non. Nunc sit amet nibh sollicitudin tellus efficitur molestie nec at justo. In non magna est. Cras facilisis turpis in orci sollicitudin, vel ornare elit blandit. Maecenas facilisis dolor nec dolor pharetra efficitur. Sed fringilla dolor pellentesque, pellentesque leo in, mattis nulla. Praesent suscipit sapien id metus pharetra, et commodo tortor pulvinar. Quisque elementum, nisl ut consequat efficitur, purus odio mollis eros, et ullamcorper purus nunc vitae diam. Nam sed laoreet massa, in gravida libero.

Duis nisi lacus, condimentum non dignissim a, ullamcorper nec dui. In auctor condimentum nulla. Nulla volutpat, metus non feugiat viverra, lectus sapien semper tortor, quis suscipit ligula."
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
    biography: "Curabitur at egestas quam. Integer ac augue nec arcu cursus semper. Integer euismod blandit rhoncus. Proin gravida, metus id interdum pretium, metus eros gravida felis, imperdiet rhoncus ligula tellus non mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam tincidunt nisi odio. Nulla efficitur ante non metus mollis, eu tincidunt ligula laoreet.

Integer odio mi, sollicitudin ut metus elementum, vulputate varius odio. Sed elementum nisl et ullamcorper imperdiet. Nulla gravida, mauris et sodales porttitor, mauris nibh pharetra nulla, eu porttitor orci risus vitae sapien. Mauris porttitor, arcu sed hendrerit ultricies, metus dolor ornare metus, sed cursus mi velit eu arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer sodales id sapien."
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
    biography: "Sed consectetur felis magna, nec molestie quam faucibus quis. Aenean at posuere mi. Suspendisse semper, enim non tincidunt gravida, sem nunc pellentesque ipsum, in condimentum libero nibh ac neque. Curabitur quis convallis sem. Donec at vehicula felis. Pellentesque posuere massa vel tellus venenatis, et venenatis nunc consectetur. Sed et dolor vitae ligula sodales mollis. Proin auctor imperdiet tristique. Cras nisi eros, condimentum non tempor sit amet, dictum et velit. Ut vel diam pharetra, vehicula magna vel, lobortis nisi. Praesent vulputate magna non nibh imperdiet accumsan. Integer ultricies sollicitudin tellus eget lobortis. Sed eleifend luctus arcu id tristique. Pellentesque mi est, ullamcorper nec velit ut, lobortis lacinia lacus. Fusce erat tellus, malesuada non ex eu, pharetra mattis leo. Curabitur ullamcorper risus."
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
    biography: "Fusce feugiat tortor id laoreet rhoncus. Proin eget tellus nisl. Maecenas feugiat libero ac urna iaculis, vel porta risus consequat. Nam nibh nisi, fringilla ac aliquam sed, cursus ut orci. Nam vestibulum risus ut ipsum mattis congue. Proin efficitur ullamcorper velit, vel vehicula nunc rutrum sit amet. Aenean vitae imperdiet metus. Curabitur placerat ullamcorper diam, eu consequat libero fermentum eget. Suspendisse imperdiet blandit magna, at porta lacus molestie ultrices. Ut suscipit feugiat tristique. Ut et erat accumsan turpis tristique dignissim.

Etiam nec ullamcorper ante, non sagittis nibh. Morbi in mollis neque, ac pulvinar lorem. Fusce hendrerit sagittis est, vel hendrerit diam consectetur eget. Mauris convallis sit amet lorem ut porta. Sed pretium pharetra sodales. Nullam lorem leo, pulvinar sed pretium."
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
    biography: "In laoreet ante justo, quis aliquam mauris scelerisque dapibus. Ut elementum dictum massa et ullamcorper. Duis rutrum dolor sem, laoreet interdum mauris bibendum eu. Morbi a tellus vel leo porta volutpat. Phasellus sit amet lacinia neque. Aliquam eget turpis at nisl aliquam semper. Nulla dignissim consectetur felis, eu consequat lorem varius sit amet. Etiam sed suscipit lacus, et vehicula magna. Nam tincidunt blandit suscipit. Morbi sollicitudin sollicitudin odio, sed rhoncus quam lobortis ac. In vitae dui sed ipsum lacinia aliquet. In posuere finibus risus vulputate dictum. Vestibulum pellentesque, nunc ac iaculis congue, felis elit facilisis purus, id consequat purus orci sed ligula. Aenean pellentesque dictum tortor, vel pharetra tellus pulvinar nec. Aliquam eu orci ut odio cursus facilisis vitae lacinia."
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
    biography: "Aliquam erat volutpat. Vestibulum ultrices dignissim nisi, quis ullamcorper leo varius non. Ut aliquam ex at magna vehicula egestas. Sed mattis orci id velit facilisis, vel vestibulum neque consectetur. Aliquam risus ipsum, mattis id purus eget, vestibulum ultrices nisl. Pellentesque eleifend, sapien in facilisis egestas, orci eros egestas justo, sed egestas lectus magna at erat. In hac habitasse platea dictumst. Nam porta, nulla ac fermentum maximus, justo purus interdum arcu, ac semper purus felis in est. Morbi lacinia turpis in condimentum condimentum. Vivamus et nibh ante. Praesent ac erat pulvinar, sodales arcu sed, porttitor tortor. Vivamus quis dolor nec metus tempus consectetur non eu nulla. Curabitur sit amet convallis tortor, ac malesuada tellus. Vivamus consectetur risus vel erat eleifend, eu."
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
    biography: "Quisque eu arcu convallis, posuere elit at, feugiat nunc. Sed eleifend vel mauris at convallis. Curabitur efficitur felis tellus, eu iaculis lorem sodales eu. Integer facilisis eu lacus at convallis. Donec commodo nisi ut elit maximus, non viverra ligula finibus. Vivamus eu porttitor dolor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.

Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In vehicula a lacus id feugiat. Maecenas tempus dolor vel urna blandit, eu blandit sem bibendum. Nullam tristique dignissim laoreet. Curabitur lobortis ipsum dolor, id ornare neque faucibus ut. Nullam vel sollicitudin sapien. Nulla facilisis nibh vel vestibulum bibendum. Maecenas eget ante rhoncus, egestas mi ac, luctus ex. Nulla facilisi. Vestibulum non faucibus dui, in."
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
    biography: "Maecenas pellentesque consectetur pretium. In semper metus orci, at faucibus erat molestie quis. Nullam faucibus risus ac erat vestibulum, vel imperdiet est efficitur. In commodo pretium nulla in eleifend. Cras gravida arcu ante, non blandit felis volutpat nec. Donec elementum, urna eget porta dictum, ex ipsum volutpat est, a interdum nibh massa in nisi. Donec sed justo id eros facilisis cursus sit amet vel nunc. Suspendisse sit amet aliquet arcu. Etiam nec neque quis nisi congue faucibus. Aenean nec aliquet nisi, quis sollicitudin quam. Morbi vel fermentum erat. Vestibulum elementum, sapien ullamcorper auctor tincidunt, magna tortor faucibus ex, vel consequat sem massa in nunc. Nam vehicula auctor tellus, id pretium quam gravida vitae. Cras quam metus, elementum lacinia volutpat eleifend."
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
    biography: "Etiam sed eros id ligula tempor blandit. Mauris nec egestas arcu. Nunc at augue eu nulla efficitur finibus. Pellentesque tempor enim in arcu aliquam, et suscipit leo mattis. Ut laoreet sapien ut erat viverra bibendum. Suspendisse non feugiat felis. Nulla eget pharetra sapien. Nunc euismod, tortor condimentum tempus eleifend, turpis tellus feugiat massa, non luctus turpis tellus sed mi. Etiam et lorem est. Nulla facilisi. Quisque sagittis augue porttitor, suscipit ligula id, fermentum mauris. Mauris facilisis nibh sit amet odio faucibus, et ornare quam porta. Nam vestibulum diam tortor, at volutpat tellus rhoncus sit amet. In aliquet odio vel est laoreet sollicitudin. Curabitur pulvinar nisl a nulla venenatis blandit. Proin vitae accumsan augue. Nunc enim sapien, egestas non quam in."
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
    biography: "Nullam et commodo sapien. Vivamus augue sem, accumsan in ipsum a, faucibus commodo purus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec sit amet tristique ligula. Etiam sit amet magna rhoncus, tempor tortor ac, varius odio. Mauris semper elementum justo et vestibulum. Aliquam nisl urna, bibendum in auctor ac, sodales quis nunc. Aenean eget blandit dolor. Aliquam rutrum congue orci vitae congue. In condimentum consectetur laoreet. Phasellus lorem est, accumsan suscipit vestibulum non, finibus id nisl. Sed non libero in dolor sodales pretium sed quis lorem. Aliquam erat volutpat. Quisque quis vehicula eros.

Phasellus at elementum dui, at porttitor metus. Quisque blandit arcu a nunc aliquam, ut gravida sem placerat. Mauris fermentum elementum lacus vel euismod. Vivamus."
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
    biography: "Fusce id aliquet purus, in convallis purus. Etiam sollicitudin placerat tellus eget sagittis. Nullam convallis magna posuere lorem euismod viverra. Aenean vel tempor magna. Mauris placerat erat non mi accumsan sodales. Maecenas porta enim id erat finibus gravida. Morbi quis dolor in erat vulputate tempus. Vestibulum id turpis tellus. Maecenas tempor nibh vitae magna tempor, id lacinia neque aliquam.

Proin pretium dui et vehicula mollis. Vivamus sit amet felis ac diam porta sollicitudin. Pellentesque metus mi, interdum ut metus non, auctor varius nunc. Sed ac arcu id dui tristique semper. Vivamus vitae erat accumsan, ultrices magna non, dignissim felis. Duis maximus ipsum neque, fermentum volutpat ex sodales nec. Donec sagittis justo ut porttitor consequat. Vestibulum varius nulla massa, sit amet."
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
    biography: "In in arcu tortor. Vivamus lacus enim, lobortis sit amet ipsum eu, gravida iaculis purus. Integer tempus sollicitudin velit nec venenatis. Nunc nisi urna, mollis id nisl scelerisque, tincidunt tempus erat. Praesent id pharetra nisi. Proin quis efficitur neque. Maecenas dapibus, ligula at eleifend varius, arcu libero posuere augue, eget porta erat enim non tortor. Donec lacinia dolor at dignissim lobortis. Vivamus convallis justo eu consectetur porttitor. Praesent nec gravida turpis. Integer at tincidunt elit, nec rhoncus urna. Etiam pellentesque ultrices lorem, eu ornare purus mollis dapibus. Sed arcu mi, pharetra ut lacinia quis, venenatis vel felis. Phasellus imperdiet lacus cursus ex dictum, sit amet venenatis est fermentum. Nam iaculis faucibus nisl at tristique. Sed in varius arcu. Pellentesque lectus."
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
    biography: "Etiam tempor lacus ac ex commodo viverra. Maecenas lectus neque, pulvinar et tellus non, malesuada pellentesque dolor. Fusce non gravida lorem. In posuere dui sed fringilla bibendum. Praesent vitae lorem at metus euismod placerat sit amet eget eros. Vestibulum luctus felis id ante iaculis, ac consectetur mi pellentesque. Integer a turpis vel sapien gravida vehicula. In malesuada risus eget nulla viverra, vehicula sollicitudin tortor tincidunt. Vestibulum ut lacus nisi. Maecenas laoreet tellus nunc, in volutpat eros posuere vel. Cras nec purus luctus, mattis enim nec, vestibulum ipsum. Curabitur mattis ornare lorem, et varius nisl mattis quis. Mauris accumsan risus ullamcorper sagittis blandit. Duis eu interdum nulla, vitae blandit erat. Phasellus et risus et augue ultricies rutrum id eget tortor. Sed."
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
    biography: "Nam convallis, felis sed vulputate elementum, nulla eros tincidunt est, sit amet gravida turpis enim id arcu. Nunc nec eros purus. In hac habitasse platea dictumst. Ut at gravida eros. Nam aliquet et odio vitae sollicitudin. Nam lobortis finibus ante, quis ornare justo elementum in. Sed eu metus id nibh cursus rhoncus sed quis mauris. Maecenas auctor vitae libero ac dapibus.

Aenean ac lacinia ante. Nullam at metus laoreet, malesuada justo eget, ullamcorper quam. Nullam viverra egestas odio luctus tristique. Ut pretium sed metus in ultricies. Morbi interdum vel enim in posuere. Morbi a urna tempor, fringilla risus eu, vestibulum ex. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Orci varius natoque penatibus et magnis."
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
    biography: "Nulla volutpat suscipit justo id interdum. Pellentesque ut volutpat nisi. Nulla at lorem a risus fringilla viverra. Integer id diam sed metus varius tempor. Sed fringilla sem eget orci mattis gravida. Donec vel tincidunt nunc. Mauris lorem quam, mattis non porta at, varius vitae nulla. Vivamus facilisis dolor vitae massa vehicula aliquam. Donec lobortis erat quis finibus blandit. Nulla dapibus est non risus hendrerit, ac rhoncus nibh imperdiet. Phasellus tempor lacus magna, eu aliquet ipsum malesuada quis. Pellentesque lectus mauris, dapibus nec ornare sed, eleifend non dui. Praesent sodales sem sit amet justo iaculis, sit amet eleifend est dignissim. Nam at porta turpis, quis consectetur neque. Curabitur at arcu sed risus molestie commodo vel nec elit. Sed dapibus, urna vitae."
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
    biography: "Praesent id hendrerit orci. Suspendisse ac rhoncus metus. Nunc porta facilisis nibh, ut semper tellus. Integer tincidunt sollicitudin blandit. Vivamus fringilla nunc at tortor finibus cursus. Quisque elit turpis, mattis quis iaculis sed, pulvinar et ex. Proin sed efficitur nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus nunc quam, convallis et mi maximus, efficitur euismod dui. Morbi quis lacus congue, tristique felis non, tempor magna. In feugiat aliquam eros. Mauris in accumsan nisi. Suspendisse scelerisque mauris lacus, sit amet lobortis odio finibus ut. In hac habitasse platea dictumst. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt tortor a dolor pretium egestas. Donec euismod purus et laoreet."
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
    biography: "Suspendisse mattis quam urna, tristique posuere augue vehicula sit amet. Quisque metus felis, tincidunt ut nibh a, convallis fermentum risus. Sed nibh velit, eleifend ac consectetur at, vulputate ut ante. Cras pulvinar porta mauris, vitae tempus turpis imperdiet ullamcorper. In et consequat nulla, in hendrerit nisl. Suspendisse sit amet pharetra erat. Donec congue interdum odio, eu tristique augue. Pellentesque at tempus libero, id venenatis neque. Nam sodales magna ut pharetra gravida. Nullam molestie sit amet nibh et ultrices. Vivamus hendrerit ut urna eu lacinia.

Duis sit amet turpis nec risus interdum fermentum. Fusce ullamcorper nunc vel dolor venenatis, in sodales mauris malesuada. Fusce sit amet tempus risus, in facilisis augue. In rutrum lorem vitae justo egestas aliquet. Donec viverra lectus."
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
    biography: "Suspendisse dictum elit eu nisi fringilla maximus. Nam rutrum bibendum urna at accumsan. Vestibulum blandit est id dolor luctus luctus. Etiam congue a dolor ac consectetur. Donec efficitur tristique nulla, vel tincidunt neque tincidunt vitae. Morbi tempor eget metus nec euismod. Sed semper leo eget quam condimentum, ac porttitor justo interdum. Fusce faucibus ornare ultrices. Etiam lorem metus, eleifend sit amet lacus auctor, tempus sagittis ante. Curabitur vel felis efficitur, maximus orci a, porta orci. Sed dictum mi nulla, id aliquam enim interdum ac. Nunc hendrerit cursus ex et porttitor. Nulla risus augue, sagittis eget porttitor vel, vulputate maximus ante. Vivamus purus sapien, tincidunt sed malesuada in, vulputate ac mauris. Maecenas ac nibh in diam aliquet porttitor. Ut dictum nec."
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
    biography: "Morbi quam orci, laoreet vel convallis a, tincidunt a metus. Donec erat ante, aliquam ut eleifend non, consequat vitae lacus. In lobortis nunc ut fringilla euismod. Sed consectetur malesuada aliquam. Nunc placerat pulvinar auctor. Integer aliquet mollis tortor sed volutpat. Aliquam posuere eleifend elit, iaculis commodo tortor lacinia sit amet. Curabitur tempus rutrum tellus quis sollicitudin. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent non commodo libero. Morbi tempor rutrum sodales. Donec ut venenatis diam. Nam massa urna, tempor tincidunt lobortis ac, dapibus sit amet tellus.

Fusce tempor urna a nibh convallis, ut semper lectus sollicitudin. Curabitur at odio sit amet nulla commodo sagittis. In ante nibh, elementum luctus ultricies egestas, scelerisque et turpis."
})
avatar21 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/profile_pics/profile_image20.jpg")
demo_user_21.profile_pic.attach(io: avatar21, filename: 'avatar-21.jpg')

demo_track_1 = Track.create!({
    user: demo_user_2,
    title: "Black Star - You Already Knew",
    track_length: 250,
    description: "This is the description area for the upload Black Star - You Already Knew. When a user uploads an audio file, they have various details they can customize - the title, artwork, and description - of an upload. A user can also return to their uploads at a later point and edit any of these details. The description is parsed before being presented to ensure line breaks are preserved, and URLs are converted to clickable hyperlinks. For more information regarding CalmCloud check out the project’s GitHub page: https://github.com/derekwolpert/CalmCloud
    
    Suspendisse tincidunt est id sodales tempus. Sed eu accumsan lorem, nec ultricies purus. Quisque eu pulvinar lectus, id dictum lectus. Suspendisse potenti. Nunc lacinia mauris ut massa iaculis laoreet. Cras pharetra nisi eget orci varius, ac ultricies nisl dapibus. Morbi id nibh pulvinar, facilisis est eget, laoreet eros. In bibendum maximus semper. Ut vel enim efficitur, blandit felis a, efficitur felis."
})
track1 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/seed_music/You+Already+Knew.m4a")
artwork1 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/resized_artwork/Black+Star+Aretha.jpg")
demo_track_1.audio_track.attach(io: track1, filename: 'demo_track_1.m4a')
demo_track_1.track_artwork.attach(io: artwork1, filename: 'demo_track_1.jpg')

demo_track_2 = Track.create!({
    user: demo_user_1,
    title: "XXYYXX - Overdone (feat. Anneka)",
    track_length: 238,
    description: "This is the description area for the upload XXYYXX - Overdone (feat. Anneka). When a user uploads an audio file, they have various details they can customize - the title, artwork, and description - of an upload. A user can also return to their uploads at a later point and edit any of these details. The description is parsed before being presented to ensure line breaks are preserved, and URLs are converted to clickable hyperlinks. For more information regarding CalmCloud check out the project’s GitHub page: https://github.com/derekwolpert/CalmCloud

Pellentesque vitae feugiat tortor. Sed eleifend mauris eu justo vehicula, eget faucibus nulla aliquam. Nunc congue tortor nulla, et posuere justo semper nec. Aliquam erat volutpat. Sed dignissim libero a nisi posuere, non condimentum libero suscipit. Integer id condimentum lacus. Maecenas mattis accumsan ornare. Aliquam sed quam dapibus, ultricies mi quis, hendrerit enim. Nullam vitae velit nunc. Suspendisse nec sodales ex, at maximus massa. Sed et bibendum leo. Duis mollis feugiat urna, eget tincidunt augue laoreet quis. Pellentesque sapien ipsum, elementum vel quam non, tincidunt vestibulum velit."
})
track2 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/seed_music/14+Overdone+(feat.+Anneka).m4a")
artwork2 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/resized_artwork/XXYYXX.jpg")
demo_track_2.audio_track.attach(io: track2, filename: 'demo_track_2.m4a')
demo_track_2.track_artwork.attach(io: artwork2, filename: 'demo_track_2.jpg')

demo_track_3 = Track.create!({
    user: demo_user_5,
    title: "Cassie - All My Love (Kingdom Edit)",
    track_length: 218,
    description: "This is the description area for the upload Cassie - All My Love (Kingdom Edit). When a user uploads an audio file, they have various details they can customize - the title, artwork, and description - of an upload. A user can also return to their uploads at a later point and edit any of these details. The description is parsed before being presented to ensure line breaks are preserved, and URLs are converted to clickable hyperlinks. For more information regarding CalmCloud check out the project’s GitHub page: https://github.com/derekwolpert/CalmCloud

Donec lacinia scelerisque libero. Curabitur semper finibus diam id ullamcorper. Aliquam luctus tempor urna, a hendrerit elit. Donec gravida velit felis, interdum dignissim ligula congue lobortis. Cras quis risus orci. Phasellus sed ante quam. Etiam malesuada mauris nisl, tempus venenatis ligula ultrices ut."
})
track3 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/seed_music/All+My+Love+(Kingdom+Edit).m4a")
artwork3 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/resized_artwork/All+My+Love+(Kingdom+Edit).jpg")
demo_track_3.audio_track.attach(io: track3, filename: 'demo_track_3.m4a')
demo_track_3.track_artwork.attach(io: artwork3, filename: 'demo_track_3.jpg')

demo_track_4 = Track.create!({
    user: demo_user_1,
    title: "Phoenix - Trying to Be Cool (A-Trak Remix)",
    track_length: 439,
    description: "This is the description area for the upload Phoenix - Trying to Be Cool (A-Trak Remix). When a user uploads an audio file, they have various details they can customize - the title, artwork, and description - of an upload. A user can also return to their uploads at a later point and edit any of these details. The description is parsed before being presented to ensure line breaks are preserved, and URLs are converted to clickable hyperlinks. For more information regarding CalmCloud check out the project’s GitHub page: https://github.com/derekwolpert/CalmCloud

Nam nec tempus mi, luctus auctor ante. Duis auctor neque ac commodo venenatis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ullamcorper metus et neque semper interdum. Duis interdum a lacus vel tincidunt. Integer aliquet velit vitae vulputate pretium. Phasellus ac magna lacinia, pellentesque arcu et, lacinia nunc. Ut condimentum mollis mauris. Aliquam id lorem id sapien rutrum vestibulum vel et felis."
})
track4 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/seed_music/Trying+to+Be+Cool+(A-Trak+Remix).m4a")
artwork4 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/resized_artwork/Trying+to+Be+Cool+(A-Trak+Remix).jpg")
demo_track_4.audio_track.attach(io: track4, filename: 'demo_track_4.m4a')
demo_track_4.track_artwork.attach(io: artwork4, filename: 'demo_track_4.jpg')

demo_track_5 = Track.create!({
    user: demo_user_3,
    title: "Banks - Warm Water (Snakehips Remix)",
    track_length: 253,
    description: "This is the description area for the upload Banks - Warm Water (Snakehips Remix). When a user uploads an audio file, they have various details they can customize - the title, artwork, and description - of an upload. A user can also return to their uploads at a later point and edit any of these details. The description is parsed before being presented to ensure line breaks are preserved, and URLs are converted to clickable hyperlinks. For more information regarding CalmCloud check out the project’s GitHub page: https://github.com/derekwolpert/CalmCloud

Nulla ultricies rhoncus lobortis. Nam lacinia eu tellus a ultricies. Nullam varius vestibulum leo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi et massa nec quam lacinia congue. Sed rutrum lacus et mi egestas suscipit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum diam nulla, rhoncus in pharetra a, tincidunt in justo. Vivamus auctor, elit sed dapibus lobortis, ex enim malesuada erat, nec sodales justo diam at enim. Curabitur euismod consequat metus, ac iaculis ex porttitor id. Suspendisse accumsan, mauris at sollicitudin condimentum, ligula massa egestas dolor, vel efficitur risus felis nec enim. Aenean pellentesque vestibulum nisi, vel volutpat augue auctor at. Etiam tristique imperdiet dignissim. Maecenas sollicitudin at nisi sed lobortis."
})
track5 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/seed_music/Warm+Water+(Snakehips+Remix).m4a")
artwork5 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/resized_artwork/Warm+Water+(Snakehips+Remix).jpg")
demo_track_5.audio_track.attach(io: track5, filename: 'demo_track_5.m4a')
demo_track_5.track_artwork.attach(io: artwork5, filename: 'demo_track_5.jpg')

demo_track_6 = Track.create!({
    user: demo_user_5,
    title: "Chromatics - Cherry (Instrumental)",
    track_length: 271,
    description: "This is the description area for the upload Chromatics - Cherry (Instrumental). When a user uploads an audio file, they have various details they can customize - the title, artwork, and description - of an upload. A user can also return to their uploads at a later point and edit any of these details. The description is parsed before being presented to ensure line breaks are preserved, and URLs are converted to clickable hyperlinks. For more information regarding CalmCloud check out the project’s GitHub page: https://github.com/derekwolpert/CalmCloud

Pellentesque sed convallis ante. Pellentesque dui est, tempus a lacinia sit amet, volutpat at tortor. Phasellus tincidunt sem a dignissim mollis. Nam lacus nibh, sollicitudin in rhoncus vel, consectetur tristique nunc. Maecenas justo odio, consectetur non orci vitae, interdum tempor elit. Aenean sed vehicula lorem. Morbi nunc lorem, efficitur vel justo vitae, euismod suscipit velit. Ut luctus odio in magna interdum venenatis. Duis vulputate ornare metus vel sollicitudin. Nulla ut hendrerit arcu. Vestibulum diam purus, gravida a elit et, vulputate volutpat felis. Nunc ut lacus dapibus, maximus justo sed, finibus nunc."
})
track6 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/seed_music/09+Cherry+(After+Dark+2)+%5BInstrumental%5D.m4a")
artwork6 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/resized_artwork/After+Dark+2+-+Instrumentals.jpg")
demo_track_6.audio_track.attach(io: track6, filename: 'demo_track_6.m4a')
demo_track_6.track_artwork.attach(io: artwork6, filename: 'demo_track_6.jpg')

demo_track_7 = Track.create!({
    user: demo_user_3,
    title: "Kilo Kish - Give It to You (Jordan Knight Cover)",
    track_length: 165,
    description: "This is the description area for the upload Kilo Kish - Give It to You (Jordan Knight Cover). When a user uploads an audio file, they have various details they can customize - the title, artwork, and description - of an upload. A user can also return to their uploads at a later point and edit any of these details. The description is parsed before being presented to ensure line breaks are preserved, and URLs are converted to clickable hyperlinks. For more information regarding CalmCloud check out the project’s GitHub page: https://github.com/derekwolpert/CalmCloud

Proin viverra interdum purus ut tempus. Aenean convallis dui a ipsum rutrum, eget venenatis elit rutrum. Aliquam non porta nunc. Maecenas a rhoncus metus. Cras accumsan dui et turpis imperdiet placerat. Quisque aliquam ex ut metus aliquam venenatis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam commodo felis laoreet elit pharetra malesuada. Praesent posuere, erat quis ornare aliquam, felis diam ultricies lacus, at porta sem elit id orci. Morbi commodo libero risus, id varius augue luctus eu. Nam ac libero in neque imperdiet fringilla ut sit amet ante."
})
track7 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/seed_music/Give+It+to+You+(Cover).m4a")
artwork7 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/resized_artwork/Give+It+to+You+(Cover).jpg")
demo_track_7.audio_track.attach(io: track7, filename: 'demo_track_7.m4a')
demo_track_7.track_artwork.attach(io: artwork7, filename: 'demo_track_7.jpg')

demo_track_8 = Track.create!({
    user: demo_user_4,
    title: "Tinashe - Just the Way I Like You",
    track_length: 271,
    description: "This is the description area for the upload Tinashe - Just the Way I Like You. When a user uploads an audio file, they have various details they can customize - the title, artwork, and description - of an upload. A user can also return to their uploads at a later point and edit any of these details. The description is parsed before being presented to ensure line breaks are preserved, and URLs are converted to clickable hyperlinks. For more information regarding CalmCloud check out the project’s GitHub page: https://github.com/derekwolpert/CalmCloud

Nulla pharetra auctor tortor, at scelerisque quam suscipit at. Nam euismod erat metus, in scelerisque odio sagittis at. Curabitur nec aliquet nunc. Maecenas at sem faucibus, vulputate risus in, dictum elit. Integer ac ornare mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin aliquet tristique ipsum, id gravida neque fermentum non. Aenean venenatis interdum lobortis. Nunc egestas bibendum scelerisque. Cras volutpat rhoncus venenatis. Morbi ut dui vehicula, vestibulum arcu eget, ullamcorper quam. Pellentesque convallis justo vel mi maximus faucibus. Fusce ultricies mi vel tortor placerat, ac bibendum quam porta. Morbi nec quam id libero porttitor posuere et a lacus. Pellentesque maximus turpis nisi, in maximus tortor feugiat nec."
})
track8 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/seed_music/06+Just+the+Way+I+Like+You.m4a")
artwork8 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/resized_artwork/Amethyst.jpg")
demo_track_8.audio_track.attach(io: track8, filename: 'demo_track_8.m4a')
demo_track_8.track_artwork.attach(io: artwork8, filename: 'demo_track_8.jpg')

demo_track_9 = Track.create!({
    user: demo_user_2,
    title: "Microglobe & Machinedrum - High on Hope",
    track_length: 261,
    description: "This is the description area for the upload Microglobe & Machinedrum - High on Hope. When a user uploads an audio file, they have various details they can customize - the title, artwork, and description - of an upload. A user can also return to their uploads at a later point and edit any of these details. The description is parsed before being presented to ensure line breaks are preserved, and URLs are converted to clickable hyperlinks. For more information regarding CalmCloud check out the project’s GitHub page: https://github.com/derekwolpert/CalmCloud

Sed sed placerat mi. Ut nec dapibus est. Phasellus ornare tortor a libero sollicitudin, nec placerat eros tempus. Etiam turpis dui, dignissim sed metus sit amet, aliquam maximus massa. Mauris leo lorem, venenatis sed volutpat eu, condimentum non arcu. Proin consequat ac erat fermentum dignissim. In fermentum velit ut libero tincidunt efficitur. Vivamus posuere arcu at tellus facilisis, ut faucibus tellus blandit. Donec vulputate vehicula ligula vel commodo. Ut lacinia nisl dolor, et iaculis nisi egestas ut. Curabitur convallis feugiat enim, vitae gravida sem euismod in."
})
track9 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/seed_music/04+High+on+Hope.m4a")
artwork9 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/resized_artwork/Afterlife.jpg")
demo_track_9.audio_track.attach(io: track9, filename: 'demo_track_9.m4a')
demo_track_9.track_artwork.attach(io: artwork9, filename: 'demo_track_9.jpg')

demo_track_10 = Track.create!({
    user: demo_user_1,
    title: "DJ Paypal - Ladies Night",
    track_length: 277,
    description: "This is the description area for the upload DJ Paypal - Ladies Night. When a user uploads an audio file, they have various details they can customize - the title, artwork, and description - of an upload. A user can also return to their uploads at a later point and edit any of these details. The description is parsed before being presented to ensure line breaks are preserved, and URLs are converted to clickable hyperlinks. For more information regarding CalmCloud check out the project’s GitHub page: https://github.com/derekwolpert/CalmCloud

Morbi vitae odio eget tortor gravida condimentum. Nulla facilisi. Suspendisse mi sapien, posuere sit amet ante vitae, euismod faucibus libero. Nunc vitae neque in libero dictum feugiat. Aliquam dignissim orci nisl, eget mollis ex semper dapibus. Praesent condimentum metus at justo luctus, a ultrices urna finibus. Donec eu neque velit. Ut eu varius nisl. Phasellus neque quam, facilisis at euismod id, blandit sed neque. Sed feugiat rhoncus arcu. Praesent convallis malesuada eleifend."
})
track10 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/seed_music/09+Ladies+Night.m4a")
artwork10 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/resized_artwork/Sold+Out.jpg")
demo_track_10.audio_track.attach(io: track10, filename: 'demo_track_10.m4a')
demo_track_10.track_artwork.attach(io: artwork10, filename: 'demo_track_10.jpg')

demo_track_11 = Track.create!({
    user: demo_user_4,
    title: "BADBADNOTGOOD - Kaleidoscope (KAYTRANADA Flip)",
    track_length: 373,
    description: "This is the description area for the upload BADBADNOTGOOD - Kaleidoscope (KAYTRANADA Flip). When a user uploads an audio file, they have various details they can customize - the title, artwork, and description - of an upload. A user can also return to their uploads at a later point and edit any of these details. The description is parsed before being presented to ensure line breaks are preserved, and URLs are converted to clickable hyperlinks. For more information regarding CalmCloud check out the project’s GitHub page: https://github.com/derekwolpert/CalmCloud

Sed vestibulum finibus ligula, molestie pulvinar orci aliquet nec. Fusce dapibus cursus sagittis. Etiam eu enim turpis. Aenean volutpat sem non libero vestibulum, sed tempus neque maximus. Praesent pharetra enim et metus mattis, a mattis mi aliquet. Nulla elementum tellus ut feugiat ultrices. Nullam interdum tellus a eros convallis cursus. Sed sodales felis nisl, a iaculis tellus imperdiet sed."
})
track11 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/seed_music/Kaleidoscope+(KAYTRANADA+Flip).m4a")
artwork11 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/resized_artwork/Kaleidoscope+(KAYTRANADA+Flip).jpg")
demo_track_11.audio_track.attach(io: track11, filename: 'demo_track_11.m4a')
demo_track_11.track_artwork.attach(io: artwork11, filename: 'demo_track_11.jpg')

demo_track_12 = Track.create!({
    user: demo_user_5,
    title: "Iglooghost - Ell (feat. Rocks FOE)",
    track_length: 131,
    description: "This is the description area for the upload Iglooghost - Ell (feat. Rocks FOE). When a user uploads an audio file, they have various details they can customize - the title, artwork, and description - of an upload. A user can also return to their uploads at a later point and edit any of these details. The description is parsed before being presented to ensure line breaks are preserved, and URLs are converted to clickable hyperlinks. For more information regarding CalmCloud check out the project’s GitHub page: https://github.com/derekwolpert/CalmCloud

Nam quis ipsum bibendum, tempus quam a, fermentum nunc. Nullam magna massa, iaculis sit amet felis quis, dictum facilisis felis. Suspendisse at dignissim odio. Quisque placerat lobortis porttitor. Ut eget orci tortor. Quisque nec diam ullamcorper, eleifend velit mollis, dictum diam. Sed faucibus purus nec vehicula condimentum. Aenean id tellus maximus, aliquam velit ac, ultricies dolor. Phasellus est urna, tristique et tempor et, pellentesque nec velit. Donec ut ante tristique, molestie enim nec, pellentesque mauris. Nam nibh erat, accumsan mollis nibh eu, viverra maximus magna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin suscipit commodo arcu, eget laoreet dui. Maecenas ac maximus magna. Integer elementum aliquam mi, id tempor tellus dignissim non."
})
track12 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/seed_music/Ell+(feat.+Rocks+FOE).m4a")
artwork12 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/resized_artwork/Ell+(feat.+Rocks+FOE).jpg")
demo_track_12.audio_track.attach(io: track12, filename: 'demo_track_12.m4a')
demo_track_12.track_artwork.attach(io: artwork12, filename: 'demo_track_12.jpg')

demo_track_13 = Track.create!({
    user: demo_user_3,
    title: "Kelela & Steve Gurley - Truth or Dare (Hot Boyz Dub) [Bok Bok Edit]",
    track_length: 290,
    description: "This is the description area for the upload Kelela & Steve Gurley - Truth or Dare (Hot Boyz Dub) [Bok Bok Edit]. When a user uploads an audio file, they have various details they can customize - the title, artwork, and description - of an upload. A user can also return to their uploads at a later point and edit any of these details. The description is parsed before being presented to ensure line breaks are preserved, and URLs are converted to clickable hyperlinks. For more information regarding CalmCloud check out the project’s GitHub page: https://github.com/derekwolpert/CalmCloud

Sed pellentesque velit sed sapien semper consequat. Curabitur tempus erat vulputate tellus rhoncus pellentesque vitae varius augue. Nam vel pretium ipsum. Quisque tristique ligula id tellus fringilla, ac viverra ligula facilisis. Ut eget urna fermentum, pulvinar nisi eget, hendrerit leo. Etiam leo lacus, porttitor nec efficitur id, mollis a dui. Cras quis pharetra quam. Proin malesuada fermentum lorem quis imperdiet. Duis vulputate vulputate odio, dapibus sagittis ex faucibus vitae. Integer sollicitudin augue est, sit amet suscipit urna ornare at."
})
track13 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/seed_music/Truth+Or+Dare+(Hot+Boyz+Dub)+%5BBok+Bok+Edit%5D.m4a")
artwork13 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/resized_artwork/Dub+Me+Apart.jpg")
demo_track_13.audio_track.attach(io: track13, filename: 'demo_track_13.m4a')
demo_track_13.track_artwork.attach(io: artwork13, filename: 'demo_track_13.jpg')


demo_track_14 = Track.create!({
    user: demo_user_5,
    title: "DJ Chap - Uh",
    track_length: 144,
    description: "This is the description area for the upload DJ Chap - Uh. When a user uploads an audio file, they have various details they can customize - the title, artwork, and description - of an upload. A user can also return to their uploads at a later point and edit any of these details. The description is parsed before being presented to ensure line breaks are preserved, and URLs are converted to clickable hyperlinks. For more information regarding CalmCloud check out the project’s GitHub page: https://github.com/derekwolpert/CalmCloud

Mauris faucibus pretium nunc dapibus venenatis. Mauris blandit elit risus, sed eleifend nisl vestibulum at. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam non magna cursus, consectetur quam at, rhoncus nulla. Etiam in dui at enim condimentum maximus a vel leo. Pellentesque ullamcorper tempus libero, a venenatis dolor rhoncus non. In mattis nibh eget est vestibulum, sed pellentesque eros molestie. Mauris eleifend bibendum aliquam. Morbi accumsan nulla sit amet augue tincidunt, ac aliquet lacus sodales. Lorem ipsum dolor sit amet, consectetur adipiscing elit."
})
track14 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/seed_music/03+Uh.m4a")
artwork14 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/resized_artwork/Teklife+VIP+2019.jpg")
demo_track_14.audio_track.attach(io: track14, filename: 'demo_track_14.m4a')
demo_track_14.track_artwork.attach(io: artwork14, filename: 'demo_track_14.jpg')

demo_track_15 = Track.create!({
    user: demo_user_1,
    title: "Kindness - Cry Everything (Bok Bok & Kindness Remix)",
    track_length: 200,
    description: "This is the description area for the upload Kindness - Cry Everything (Bok Bok & Kindness Remix). When a user uploads an audio file, they have various details they can customize - the title, artwork, and description - of an upload. A user can also return to their uploads at a later point and edit any of these details. The description is parsed before being presented to ensure line breaks are preserved, and URLs are converted to clickable hyperlinks. For more information regarding CalmCloud check out the project’s GitHub page: https://github.com/derekwolpert/CalmCloud

Ut sit amet velit sapien. Phasellus at tortor at libero fringilla porttitor in et dolor. Sed sed nulla tempus risus sagittis finibus. In consectetur, dui ac vulputate mattis, turpis mauris condimentum ante, a interdum purus tortor sit amet urna. Nunc tincidunt facilisis elementum. Aliquam ullamcorper tempor nisi vitae laoreet. Quisque sed orci nulla. Integer vestibulum, lorem id placerat porta, sem lacus condimentum libero, ut accumsan turpis enim vitae enim. In ut ante sollicitudin, mattis magna vitae, eleifend metus. Mauris ut nisi quam. Sed vestibulum metus a turpis rutrum, porttitor mattis ligula commodo."
})
track15 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/seed_music/Cry+Everything+(Bok+Bok+%26+Kindness+Remix).m4a")
artwork15 = open("https://calm-cloud-aa-seed.s3.us-east-2.amazonaws.com/resized_artwork/Cry+Everything+(Bok+Bok+%26+Kindness+Remix).jpg")
demo_track_15.audio_track.attach(io: track15, filename: 'demo_track_15.m4a')
demo_track_15.track_artwork.attach(io: artwork15, filename: 'demo_track_15.jpg')

comment_1 = Comment.create!({
    track: demo_track_1,
    user: demo_user_3,
    body: "Vestibulum tempus, eros id ullamcorper dictum, nulla felis congue elit, ut imperdiet ante ante eget libero. Praesent elementum consectetur suscipit. Ut quis blandit nisl. Vestibulum gravida turpis dictum, vestibulum velit ut, ultricies odio. Cras facilisis eleifend interdum. Sed dapibus ultricies orci, vitae vestibulum magna gravida eget. Morbi lobortis blandit metus, in porta turpis accumsan et. Donec mattis urna porta egestas vestibulum. Nulla risus sem, aliquam sed augue non, vestibulum gravida nisi. Quisque interdum, metus vitae maximus convallis, quam nunc egestas est, varius mattis sem nisi id lorem. Nunc laoreet nulla massa, et maximus risus posuere et. Aenean vel metus auctor, dictum odio et, sodales nibh. Donec at porta ante, lobortis tristique arcu. Sed vitae tellus ut tortor luctus porttitor. Sed ullamcorper vel enim placerat ullamcorper."
})

comment_2 = Comment.create!({
    track: demo_track_1,
    user: demo_user_7,
    parent_comment: comment_1,
    body: "Sed id elit nec quam porttitor ornare sit amet sit amet enim. Nullam a leo eget tellus ullamcorper pellentesque. Duis vitae massa nec sem ultrices rhoncus eget ac urna. Morbi luctus a odio vitae placerat. Nulla nisl neque, maximus nec euismod non, porttitor quis leo. Duis vitae malesuada ex, in condimentum velit. Aenean commodo est at commodo suscipit. Aliquam erat volutpat. Sed aliquam varius vestibulum."
})

comment_3 = Comment.create!({
    track: demo_track_1,
    user: demo_user_2,
    body: "Etiam neque tellus, suscipit et enim ut, mollis volutpat tortor. Praesent scelerisque ex ipsum, ac mollis felis aliquam ut. Etiam placerat auctor ante at malesuada. Nunc non nunc sed sem aliquam tincidunt id a tortor. Vivamus pretium sollicitudin orci, quis eleifend urna tincidunt vel. Nullam cursus mauris turpis, nec suscipit odio vulputate nec. Mauris cursus elit quis mauris blandit, feugiat varius ipsum tincidunt. Curabitur blandit neque sed massa tempus, luctus malesuada purus dapibus. Donec pulvinar lacinia leo, ut venenatis nisl vulputate et. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla cursus hendrerit ex ac ullamcorper."
})

comment_4 = Comment.create!({
    track: demo_track_1,
    user: demo_user_6,
    body: "Sed aliquet nisi ut risus pellentesque, vitae molestie lectus dignissim. Phasellus tellus nisi, posuere eu tincidunt non, vestibulum at lacus. Duis in augue efficitur, mollis metus sed, pulvinar ipsum. Cras fermentum mollis pulvinar. Curabitur cursus tristique risus at volutpat. Cras vitae mi mollis, finibus velit eget, tempor dui. Maecenas tincidunt consectetur dui, in pellentesque lectus varius placerat. Sed non imperdiet est. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec sem lacus, ornare et mattis vel, eleifend eget purus. Quisque ex tortor, elementum et neque et, ullamcorper ornare sem."
})

comment_5 = Comment.create!({
    track: demo_track_2,
    user: demo_user_8,
    body: "Sed metus dui, placerat at vulputate eu, maximus laoreet leo. Mauris in elementum eros. Donec at tempor eros, fringilla facilisis lacus. Cras dolor odio, tempor eget viverra finibus, faucibus ac lorem. Nulla eget purus bibendum, tempor quam et, viverra orci. Quisque elementum arcu non laoreet molestie. Sed ac pretium lorem. Duis mollis, nisl efficitur lacinia pretium, libero lacus rutrum elit, vel dictum ligula urna id massa. Sed a mi vel ex pellentesque dictum. Nulla pretium massa sed velit tempus ornare. Sed ultricies pellentesque mauris, ut iaculis tortor sollicitudin quis. Curabitur tincidunt fringilla nunc, ut tristique enim fringilla ac. Morbi erat est, interdum vel sagittis sed, posuere id odio. Proin venenatis sapien mollis lorem lacinia vehicula. Proin et efficitur ex."
})

comment_6 = Comment.create!({
    track: demo_track_2,
    user: demo_user_1,
    body: "Morbi vitae sodales felis. Morbi pellentesque varius nisi, at commodo arcu gravida eget. Sed est purus, mattis vitae volutpat id, congue eget sem. Sed imperdiet, metus a egestas consequat, leo diam lacinia enim, id tempus ante massa quis mi. Donec eu arcu velit. Curabitur in arcu diam. Aenean mattis cursus porta. Pellentesque accumsan, libero id aliquam consectetur, massa neque maximus massa, at convallis augue sem sit amet tellus. Donec congue neque ac metus commodo, in rhoncus massa bibendum. Nullam nec ipsum molestie, vestibulum tellus eget, condimentum tellus. Vestibulum quis nibh at quam commodo feugiat at a nisi."
})

comment_7 = Comment.create!({
    track: demo_track_2,
    user: demo_user_7,
    body: "Ut dignissim cursus sodales. Cras ultrices elit eget eleifend dignissim. Etiam sit amet tortor ac risus ornare imperdiet eu at urna. Mauris luctus sapien consectetur, interdum sapien et, blandit augue. Nulla orci purus, porta eu aliquam eget, sagittis ut risus. Aliquam aliquet lobortis ante, eu rhoncus erat egestas vitae. Quisque vel interdum metus. Praesent iaculis odio sit amet ante interdum euismod. Suspendisse neque leo, sagittis non sagittis vel, feugiat et elit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque eleifend nulla vel nulla sagittis, et fringilla elit mattis. Sed venenatis mauris quis erat vehicula vestibulum. Vestibulum ut nisi vehicula lorem scelerisque bibendum id in nulla."
})

comment_8 = Comment.create!({
    track: demo_track_2,
    user: demo_user_2,
    parent_comment: comment_7,
    body: "Nullam ac mi nec quam pellentesque bibendum quis mollis dolor. Proin mollis tempus commodo. Vivamus pulvinar est sed bibendum lacinia. Duis et lectus ex. Vivamus libero ipsum, convallis et orci sed, hendrerit vulputate libero. Proin mattis iaculis ante venenatis egestas. Integer luctus dui leo, ut tristique metus vulputate nec. Etiam neque lorem, laoreet nec nibh quis, consectetur tempus libero. Phasellus a nunc enim. Nulla gravida faucibus pretium. Sed dictum arcu at tincidunt rhoncus. Phasellus sollicitudin mauris a justo suscipit, non lobortis neque egestas. Vestibulum interdum egestas est id pharetra. Nam pharetra dignissim libero at viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris laoreet, magna non venenatis maximus, metus orci mattis nibh, tempor bibendum purus ligula non leo."
})

comment_9 = Comment.create!({
    track: demo_track_3,
    user: demo_user_5,
    body: "Ut malesuada, risus quis porta consectetur, orci eros laoreet augue, sed viverra arcu justo in nibh. Etiam facilisis leo dolor, id posuere dolor scelerisque vel. Nulla magna leo, mollis aliquet faucibus vel, tristique in mi. Praesent eu metus quis ex gravida porta non eu ante. Nulla tincidunt vitae leo vitae elementum. In id sapien mauris. Duis pulvinar aliquam elit id auctor. Integer luctus dapibus placerat. Aenean lacus enim, efficitur eget scelerisque sed, egestas ac mi. Aenean aliquam sem sit amet risus consequat commodo."
})

comment_10 = Comment.create!({
    track: demo_track_3,
    user: demo_user_8,
    parent_comment: comment_9,
    body: "Suspendisse vitae purus turpis. Vestibulum eros enim, consectetur ultricies condimentum et, rutrum vitae ante. Aliquam nunc massa, interdum ut ultrices eget, ultricies et velit. Nulla eget elit lacinia, tincidunt diam a, consequat augue. Quisque quis sem non neque sagittis commodo. Duis aliquet nulla sapien. Nulla faucibus eros non nisi pharetra, porttitor congue dui blandit. Integer rhoncus est laoreet, tempus leo sed, dapibus lacus."
})

comment_11 = Comment.create!({
    track: demo_track_3,
    user: demo_user_9,
    body: "Vivamus euismod ac turpis eget consectetur. Quisque imperdiet neque et ligula sollicitudin, non porttitor justo blandit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi ut congue eros, ut tincidunt ante. Nullam et neque bibendum, vulputate nisl nec, sodales nulla. Maecenas laoreet ullamcorper dapibus. Fusce scelerisque mollis leo id rutrum. Morbi dictum massa eget lorem efficitur, id aliquam ligula viverra. Nulla tristique dapibus neque, at suscipit turpis pretium a. Praesent pulvinar velit eget urna pellentesque mollis. Fusce sit amet rutrum risus. Integer vehicula neque sollicitudin, pellentesque mauris at, luctus massa. Sed ex lacus, vehicula non faucibus vel, hendrerit non sem."
})

comment_12 = Comment.create!({
    track: demo_track_3,
    user: demo_user_1,
    body: "Quisque quis luctus quam, ac gravida arcu. Aliquam ullamcorper commodo tellus, sit amet tincidunt dolor commodo id. Maecenas et purus eu eros consectetur ornare. Praesent dui diam, efficitur non accumsan nec, vestibulum in tortor. In hac habitasse platea dictumst. Nullam convallis at velit id bibendum. Cras fringilla nisi dictum, pretium massa eget, tristique magna."
})

comment_13 = Comment.create!({
    track: demo_track_4,
    user: demo_user_2,
    body: "Morbi tincidunt ullamcorper mauris, ut viverra nunc feugiat eleifend. Curabitur vitae sodales odio. Curabitur accumsan mauris et justo pretium, semper tempus libero volutpat. Vivamus cursus eget ipsum quis ullamcorper. Quisque imperdiet enim sed orci molestie, quis ultricies arcu porta. Nullam vitae sem eget magna pharetra egestas. Vivamus placerat nisi finibus elementum malesuada. Maecenas tincidunt elit id metus rutrum lacinia. Praesent mollis arcu eros, vel cursus sapien consectetur nec."
})

comment_14 = Comment.create!({
    track: demo_track_4,
    user: demo_user_9,
    body: "Mauris mauris felis, placerat nec ultricies non, rhoncus in turpis. Suspendisse rutrum suscipit hendrerit. Donec placerat libero est, volutpat interdum metus blandit et. Nulla nisi massa, imperdiet maximus ligula quis, condimentum interdum ante. Morbi eu lorem vel mi vestibulum egestas non nec ante. Phasellus suscipit lorem bibendum, pulvinar arcu eget, congue mi. Mauris eu lectus id justo tincidunt tincidunt nec ac velit. Donec non tortor id nulla blandit lacinia sed a mi. Aliquam ac felis arcu. Ut id aliquam massa."
})

comment_15 = Comment.create!({
    track: demo_track_4,
    user: demo_user_10,
    parent_comment: comment_14,
    body: "Morbi aliquet finibus enim non dictum. Proin elit sapien, euismod at cursus at, imperdiet id enim. Sed sed lectus pellentesque, sodales lectus accumsan, pulvinar libero. Sed molestie faucibus mattis. Cras varius massa id erat ultrices gravida a iaculis est. Nunc vel est ipsum. Duis convallis ipsum eget diam tempor luctus. Donec odio dolor, volutpat sed nisi et, mattis vehicula lectus. Duis tristique mi vitae sagittis tempor. In quis tortor quis dui consectetur ultricies. Cras vitae ante eget orci aliquet dapibus. Aenean viverra justo vitae elit commodo dictum. Nam ante mauris, semper non luctus a, posuere et sapien. Donec eget aliquet nisi."
})

comment_16 = Comment.create!({
    track: demo_track_4,
    user: demo_user_1,
    body: "Pellentesque volutpat mi et nisl placerat, in vehicula dolor elementum. Duis mollis finibus consectetur. Nulla interdum risus leo, in sollicitudin ante ornare quis. In nec varius mi, ac fermentum velit. Vivamus eget tortor a urna aliquam bibendum. Morbi ut leo feugiat leo dignissim volutpat et pharetra nibh. Cras porta mauris ante, sed aliquam purus accumsan tempor. Phasellus posuere justo nisi, eu accumsan mi pharetra ac. Donec eget enim metus. Vivamus condimentum vitae ex ut feugiat. Praesent vel erat id neque faucibus pharetra. Maecenas feugiat justo lorem, eu auctor erat tincidunt quis. Curabitur mattis nulla nec tellus commodo mollis. Donec in libero lobortis, tincidunt mi sit amet, feugiat augue. Nam quis sollicitudin purus."
})

comment_17 = Comment.create!({
    track: demo_track_5,
    user: demo_user_3,
    body: "Donec eget auctor ante, vel viverra risus. Nullam vel ex et sem hendrerit ullamcorper non a leo. Phasellus convallis elementum velit vehicula sollicitudin. Aenean vel elit sit amet felis efficitur suscipit. Nullam hendrerit imperdiet ex mollis lobortis. Praesent blandit, purus sed blandit suscipit, nibh purus ornare nibh, vel rhoncus lorem mauris non turpis. Quisque orci libero, volutpat gravida vestibulum et, pharetra id libero. Maecenas at consequat libero. Nunc id malesuada nibh, eget consequat ipsum. Vivamus id interdum ex, eget lacinia arcu. Fusce nisi libero, auctor sed nibh et, rutrum aliquet ex. Donec molestie dapibus velit in lobortis."
})

comment_18 = Comment.create!({
    track: demo_track_5,
    user: demo_user_10,
    body: "Vestibulum fermentum lacus ac odio rhoncus luctus. Maecenas tempor mauris accumsan, pellentesque lectus vitae, lacinia ipsum. Aliquam erat volutpat. Fusce quis odio euismod, gravida odio ut, bibendum velit. Curabitur a ornare nisi, vitae molestie quam. Pellentesque finibus velit id purus iaculis, a venenatis nunc mollis. Phasellus at ex ipsum. Pellentesque eget orci id libero vulputate consequat. Nunc dignissim id mi a rhoncus. Morbi mollis non felis vitae bibendum. Fusce vel quam ornare mauris dignissim viverra non sed risus. Maecenas viverra, erat a fermentum mollis, leo eros vulputate lectus, nec euismod orci lacus sed massa. Sed malesuada, ligula eget pulvinar viverra, nulla arcu auctor sem, eu tempor turpis nulla ac orci. Vestibulum et efficitur tortor, nec congue libero. Nam est ipsum, tempor vitae libero vel, blandit porta lectus."
})

comment_19 = Comment.create!({
    track: demo_track_5,
    user: demo_user_11,
    body: "Proin vel consequat dolor, vel gravida metus. Ut finibus blandit quam a molestie. Donec quis enim sit amet dui suscipit cursus id rutrum lectus. Quisque tellus massa, bibendum in consequat a, porta porta libero. Morbi placerat quis dolor ac vestibulum. Proin aliquam, justo quis laoreet posuere, odio erat dictum urna, nec cursus odio turpis eget velit. Nullam viverra rutrum ornare. Interdum et malesuada fames ac ante ipsum primis in faucibus."
})

comment_20 = Comment.create!({
    track: demo_track_5,
    user: demo_user_4,
    parent_comment: comment_19,
    body: "Nulla sed eleifend enim. Sed ut pretium nisl, id mattis nibh. Suspendisse mauris ligula, porttitor ac iaculis et, pellentesque vel tellus. Cras mollis, enim at accumsan malesuada, diam ipsum blandit tortor, ac vulputate ante magna eu odio. Ut lobortis, velit eget venenatis laoreet, nulla arcu varius enim, eget pulvinar sapien metus vel libero. Aenean nec mauris vitae leo ultricies viverra quis sagittis ligula. Pellentesque semper consequat sem vel posuere. Morbi nunc quam, placerat eget dolor nec, aliquet maximus quam."
})

comment_21 = Comment.create!({
    track: demo_track_6,
    user: demo_user_1,
    body: "Curabitur ultrices odio sed velit scelerisque facilisis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse sed tincidunt lacus. Maecenas et molestie nisl. Mauris cursus tortor sit amet justo euismod, at pharetra ligula volutpat. Ut eget dui at libero dictum commodo sollicitudin ut ipsum. Fusce eget convallis ligula."
})

comment_22 = Comment.create!({
    track: demo_track_6,
    user: demo_user_11,
    body: "Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In vitae nunc nec augue facilisis convallis id sed urna. Etiam nisl odio, posuere interdum ante nec, bibendum pharetra erat. Maecenas eu erat id tellus pharetra maximus. Mauris sollicitudin augue hendrerit elit pellentesque, in varius diam dignissim. Cras vel elit pulvinar, dictum risus ut, dignissim nulla. Vestibulum tempus in metus id lobortis. Etiam in odio non magna tristique consectetur et sit amet tortor. Aliquam vehicula dictum lobortis. Praesent nisl mauris, rutrum id rhoncus at, viverra at quam. Quisque in hendrerit mi."
})

comment_23 = Comment.create!({
    track: demo_track_6,
    user: demo_user_5,
    parent_comment: comment_22,
    body: "Vivamus in orci quis nibh dictum tristique. Nunc volutpat sollicitudin lorem. In commodo purus est, eget tempus tortor gravida id. Ut bibendum, nulla vitae commodo lacinia, odio elit euismod dui, nec lacinia arcu massa porttitor felis. Nunc nec tempus felis. Maecenas ullamcorper mauris non lobortis pulvinar. Sed vel tristique lectus. Integer elit lorem, scelerisque sed semper non, pharetra vitae sem. Nunc ac turpis vitae ante commodo imperdiet. Integer congue eu odio non tincidunt. Vivamus eu mi in orci euismod malesuada. Vestibulum id sagittis velit. Curabitur sit amet sodales dui. Integer pulvinar quam id velit gravida, a eleifend ligula pellentesque. Mauris eu ante rhoncus, dapibus orci id, vehicula nunc."
})

comment_24 = Comment.create!({
    track: demo_track_6,
    user: demo_user_12,
    body: "Proin nec diam non neque vestibulum tincidunt at ac nibh. Ut iaculis convallis arcu, eget eleifend massa fermentum sed. Fusce elementum, libero et venenatis egestas, metus diam lacinia orci, nec laoreet mauris augue non urna. Donec vehicula pharetra urna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus tincidunt, ante vel molestie tincidunt, libero enim posuere augue, consectetur rutrum erat lorem quis urna. Ut auctor pretium diam, ornare suscipit ligula suscipit nec."
})

comment_25 = Comment.create!({
    track: demo_track_7,
    user: demo_user_12,
    body: "Donec consequat sollicitudin metus, ut rhoncus nibh auctor non. Aliquam tempor auctor metus in tempor. Etiam nec ornare urna. Integer vel arcu consectetur, condimentum lacus quis, iaculis ipsum. Nam aliquet turpis libero. Integer dictum ultricies dolor, quis dignissim felis tempor vitae. Nulla nec ante vitae ligula fringilla porttitor sit amet vel nibh. Nunc dapibus vulputate interdum. Donec vel felis tellus. Mauris porta, ligula a rutrum elementum, tortor massa lobortis mi, a placerat ipsum lorem at urna. Maecenas volutpat accumsan pellentesque. Quisque mollis posuere dui, congue egestas lectus pulvinar vel. In blandit placerat lacus, a dictum dui scelerisque quis."
})

comment_26 = Comment.create!({
    track: demo_track_7,
    user: demo_user_3,
    body: "Donec sed pharetra neque. Sed tempor urna sed nunc blandit, et vestibulum orci pellentesque. Integer sem felis, varius eu lobortis sed, vulputate sit amet elit. Donec nec sodales elit. Vivamus ac justo porta, bibendum risus rutrum, sodales odio. Vestibulum semper, nulla id lobortis euismod, nulla lorem fermentum massa, eget faucibus magna tortor eu quam. Cras nec sem sit amet augue vestibulum faucibus. Duis suscipit vestibulum eros quis semper."
})

comment_27 = Comment.create!({
    track: demo_track_7,
    user: demo_user_13,
    body: "Praesent feugiat sit amet nibh sed ultrices. Aliquam fermentum nunc in ipsum auctor sodales. Donec quis mi sit amet urna luctus scelerisque. Nunc nisi ex, posuere pellentesque condimentum mollis, dignissim quis turpis. Nunc quis cursus risus, sit amet dapibus risus. Ut molestie semper sapien in tempus. Ut varius, tellus et convallis vestibulum, diam purus condimentum urna, et mollis nulla risus nec augue. Mauris imperdiet ipsum et velit sodales finibus. Nam eget ante orci. Phasellus et malesuada sapien. Sed sed dolor accumsan, aliquet dui ac, ultrices nulla. Pellentesque id felis non magna pulvinar scelerisque nec ac turpis. Vivamus a dui libero."
})

comment_28 = Comment.create!({
    track: demo_track_7,
    user: demo_user_4,
    parent_comment: comment_27,
    body: "Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras ac augue non mauris tincidunt varius. Suspendisse vitae dui sed tortor ornare molestie. Sed sed enim ac mauris molestie luctus. Nam placerat sapien ac dictum pretium. Etiam porta enim in nisl hendrerit, in fringilla nisi feugiat. Suspendisse potenti. In tortor est, egestas at est ut, accumsan blandit dolor. Ut semper mattis nulla eu laoreet. Donec ultrices nisi in volutpat auctor. Aenean tincidunt augue ac eros porttitor, sed molestie est malesuada. Donec accumsan nunc dolor, elementum aliquam magna aliquam non."
})

comment_29 = Comment.create!({
    track: demo_track_8,
    user: demo_user_13,
    body: "Curabitur sit amet purus ac est tempus ultrices id et justo. Nam pellentesque egestas orci non feugiat. Maecenas fringilla vulputate egestas. Nulla commodo vehicula nunc eget cursus. Nullam in nulla nisl. Proin in lacus at nunc laoreet cursus et quis est. Aenean fringilla posuere lacinia. Aliquam purus lorem, finibus eget accumsan eget, euismod id dui. Etiam accumsan nisl vitae felis imperdiet, at porttitor lacus tristique. Phasellus pretium nulla quis convallis hendrerit. Nunc suscipit a arcu a tincidunt. Etiam elementum purus mi, eu fermentum orci laoreet nec."
})

comment_30 = Comment.create!({
    track: demo_track_8,
    user: demo_user_5,
    parent_comment: comment_29,
    body: "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed vulputate imperdiet sagittis. Phasellus non purus ac sem rhoncus dapibus at quis erat. Vivamus vitae laoreet nibh. Nullam pellentesque, lectus ac fermentum tincidunt, tellus lectus scelerisque tortor, at rutrum arcu tellus non erat. Donec dapibus tortor id eleifend finibus. Nam elit magna, semper lobortis est a, tincidunt scelerisque orci. Pellentesque ut elementum neque, eu suscipit nisl. Mauris ex neque, viverra at orci eu, congue imperdiet mi. Ut nec eleifend libero. Nulla vel est velit. Sed fermentum cursus gravida."
})

comment_31 = Comment.create!({
    track: demo_track_8,
    user: demo_user_14,
    body: "Proin at auctor quam, a consectetur enim. Praesent luctus ante eu erat tempor, ut sodales felis dapibus. Nunc vehicula nisi et feugiat ultrices. Mauris volutpat consectetur nibh, vel viverra lorem efficitur a. Quisque quis diam at ligula dignissim porta non id erat. Cras a ante et dolor rutrum venenatis et vel nulla. Curabitur fringilla turpis et convallis rhoncus. Aenean elementum tristique mi nec tempor. Nunc quis erat tempus, molestie risus eget, mattis lorem. Integer sodales fringilla erat in pellentesque. In convallis rhoncus sagittis."
})

comment_32 = Comment.create!({
    track: demo_track_8,
    user: demo_user_4,
    body: "Suspendisse fermentum vitae justo tincidunt egestas. Quisque egestas neque at quam consequat ultrices. Sed lacinia turpis quis turpis tempor, a dictum dolor sagittis. Nullam ac rhoncus lacus. Ut suscipit elementum gravida. Duis et erat eros. Suspendisse diam urna, eleifend nec venenatis eu, pharetra et erat. Praesent nec nulla id lectus sollicitudin fermentum. Curabitur eget vestibulum urna, eget porta ante. Sed tortor libero, feugiat sit amet porttitor et, posuere eget eros."
})

comment_33 = Comment.create!({
    track: demo_track_9,
    user: demo_user_3,
    body: "Sed id iaculis turpis. Duis ultricies aliquam pellentesque. Sed in rhoncus nunc. Donec ut vestibulum nisi. Nam non rutrum dolor. Vestibulum a magna consequat, feugiat massa a, tincidunt neque. Phasellus pretium, elit eget tristique ultrices, risus velit ultricies diam, id dictum lectus sapien a nulla. Nunc pretium, lectus id tincidunt hendrerit, felis massa lacinia orci, sed hendrerit ipsum lorem in mi. Phasellus venenatis vitae enim at bibendum. Fusce cursus diam aliquam, facilisis sem non, dapibus enim. Nulla pellentesque justo quis orci finibus, et interdum augue placerat. Aliquam vel enim lacus. Proin posuere interdum nulla, a egestas ante bibendum id."
})

comment_34 = Comment.create!({
    track: demo_track_9,
    user: demo_user_15,
    body: "Praesent mollis tellus leo, nec rutrum tortor tempor non. Mauris urna nisi, malesuada quis molestie faucibus, luctus nec purus. Donec nec elit sit amet libero auctor auctor. Duis vitae dapibus risus. Aliquam erat volutpat. Nullam eleifend, lectus non convallis vestibulum, lorem purus porta erat, nec consequat ex lacus quis lorem. Donec quam nunc, vehicula id lectus ac, cursus lacinia augue."
})

comment_35 = Comment.create!({
    track: demo_track_9,
    user: demo_user_14,
    parent_comment: comment_34,
    body: "Nunc nisi nunc, ultricies at magna vel, lobortis maximus nibh. Aenean mattis velit a urna sagittis molestie a eget massa. Proin vel risus tempor, scelerisque tellus eu, lacinia odio. Etiam volutpat sed nibh eget vestibulum. Etiam iaculis mollis tristique. Ut lobortis lobortis nisl quis imperdiet. Sed risus felis, luctus commodo laoreet at, congue a felis. Maecenas ac nibh commodo, malesuada nulla eget, pellentesque lacus. Nulla molestie interdum libero sit amet posuere. In sagittis eu enim pharetra fringilla."
})

comment_36 = Comment.create!({
    track: demo_track_9,
    user: demo_user_2,
    body: "Duis consectetur imperdiet nulla non ullamcorper. Fusce ac felis ac nisi interdum scelerisque nec vitae sapien. Aenean mattis posuere justo, ac fringilla mauris condimentum vel. Aliquam in volutpat velit, quis placerat nibh. Mauris sit amet elit vestibulum, accumsan arcu eget, facilisis dolor. Quisque quis ante non magna aliquam pellentesque vel a ipsum. Suspendisse elementum purus ex, et porttitor velit tristique a. Aliquam auctor, neque vitae iaculis sagittis, arcu dolor finibus nulla, vitae commodo nibh justo id augue. Ut non nibh in lorem porta rutrum. Cras elementum hendrerit euismod. Pellentesque vulputate suscipit velit, at convallis ante. Morbi porta dui lorem, sed dignissim tellus eleifend id. In aliquet ligula et semper pharetra. Nunc et vehicula dui. Donec pellentesque fringilla lacus, id molestie ante consequat quis."
})

comment_37 = Comment.create!({
    track: demo_track_10,
    user: demo_user_1,
    body: "Integer in ultricies eros. Donec nec tincidunt velit, non vehicula nibh. Fusce elit tortor, efficitur vitae tincidunt ac, scelerisque et ex. Ut placerat neque vel pharetra vulputate. Nulla mattis interdum nunc non lobortis. Ut vel ipsum non justo mollis aliquet ac vel erat. Morbi placerat sodales massa, nec porttitor nisl tempus nec. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec arcu dolor, pharetra eget ipsum eu, facilisis volutpat risus. Aliquam lacus odio, pulvinar ut auctor sit amet, maximus sed ante. Donec tempor placerat laoreet. Quisque sem libero, tempor vel rutrum id, facilisis eu risus. Maecenas ac accumsan sapien. Suspendisse pellentesque aliquet leo, a vehicula quam sodales in."
})

comment_38 = Comment.create!({
    track: demo_track_10,
    user: demo_user_15,
    body: "Pellentesque vitae auctor magna. Praesent nibh neque, faucibus rhoncus mi sodales, ultricies dictum justo. Duis eget orci ligula. Praesent mattis, mauris ut malesuada tristique, metus tellus tincidunt nunc, ullamcorper rutrum erat nunc quis ex. Nunc congue dictum libero in tincidunt. Proin blandit nunc nec nulla sollicitudin vulputate. Maecenas egestas enim at leo ultrices blandit. Praesent id nulla ac dolor bibendum hendrerit. Quisque a rutrum sapien, vitae cursus orci. Cras vulputate varius quam, vitae placerat nisi varius eu."
})

comment_39 = Comment.create!({
    track: demo_track_10,
    user: demo_user_16,
    body: "Curabitur et erat vel ante dapibus tristique. Ut porttitor, risus et pharetra lacinia, lectus diam blandit mauris, gravida aliquet ex nulla at metus. Vestibulum euismod dictum risus, gravida varius nulla iaculis eget. Sed dignissim pulvinar nunc, in tristique augue viverra at. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur aliquet lacinia turpis, vel vestibulum lorem interdum vitae. Duis viverra varius neque sed tristique. Nam laoreet, massa non bibendum bibendum, mi erat ultrices ipsum, at aliquam ex eros ut enim. Etiam vestibulum velit sit amet sem elementum pellentesque. Duis feugiat eros ac tempor dapibus. Aenean eget orci eget tortor mattis maximus. Nulla facilisi. Quisque scelerisque faucibus aliquam. Vestibulum fermentum lobortis tincidunt."
})

comment_40 = Comment.create!({
    track: demo_track_10,
    user: demo_user_2,
    parent_comment: comment_39,
    body: "Donec libero eros, rutrum commodo nibh et, pharetra efficitur magna. Praesent id lorem in purus ullamcorper ullamcorper. Cras sed condimentum orci, tempus pharetra dolor. Morbi sodales pulvinar placerat. Ut et est quis felis placerat commodo. Etiam auctor ornare arcu, et convallis dolor elementum nec. Curabitur metus lectus, ultricies nec velit et, sodales condimentum nisl. Praesent ut velit non dui sodales sodales. Sed finibus pretium porta. Pellentesque vel ipsum convallis ex fringilla egestas gravida sed purus. Donec dignissim luctus quam eget consectetur. Sed ac nisl elementum, fringilla ligula ut, molestie nulla. Ut ante ipsum, scelerisque sit amet lacinia non, auctor vitae quam. Ut libero nunc, suscipit at volutpat ac, varius nec augue."
})

comment_41 = Comment.create!({
    track: demo_track_11,
    user: demo_user_17,
    body: "Vestibulum ut hendrerit libero, et auctor risus. Praesent efficitur, metus sit amet lobortis dictum, diam eros vehicula orci, ut condimentum tellus velit a risus. Nullam dictum tincidunt suscipit. Aliquam placerat nulla sed iaculis rutrum. In euismod sit amet eros ut cursus. In viverra auctor hendrerit. Ut a porttitor eros. Morbi cursus erat ullamcorper sem ullamcorper interdum. Phasellus feugiat arcu sed enim mollis, ut vestibulum sapien consectetur. Phasellus et nunc quis diam lobortis condimentum a eget eros. Quisque non leo accumsan, vehicula eros ut, cursus orci. Maecenas interdum accumsan turpis placerat blandit. Vivamus vehicula finibus turpis ut feugiat. Nam laoreet ultrices quam fermentum dignissim. Nam sed eros id tellus dapibus porttitor et maximus eros. Nulla ac faucibus velit."
})

comment_42 = Comment.create!({
    track: demo_track_11,
    user: demo_user_16,
    body: "Pellentesque faucibus, ex ac semper pulvinar, nisl ligula blandit nisi, nec auctor tellus sapien eget nisi. Donec elit ligula, posuere quis nisl vitae, congue placerat nibh. Sed urna dui, feugiat a pellentesque eu, finibus sed metus. Vivamus sollicitudin elementum elit, eget gravida nibh luctus a. Nullam vitae felis rutrum tellus mattis ullamcorper. Aliquam rutrum enim eros, et placerat massa pharetra tempor. Nullam sollicitudin est sit amet sagittis porttitor. Donec pretium vel turpis ac lacinia. Morbi libero odio, sagittis sed ornare rutrum, lacinia in tortor. Quisque tempor ipsum nibh, ultrices tincidunt arcu malesuada vitae. Sed at posuere metus, a cursus mauris."
})

comment_43 = Comment.create!({
    track: demo_track_11,
    user: demo_user_4,
    parent_comment: comment_42,
    body: "Sed ultricies erat et molestie iaculis. Mauris vulputate elit ipsum, ac ornare leo commodo ornare. Morbi ut turpis quis massa finibus posuere. Proin euismod orci vestibulum commodo dignissim. Integer in varius arcu, pellentesque placerat est. Maecenas tristique, leo quis elementum consequat, odio augue fringilla arcu, nec consequat risus enim ut neque. Nunc lacinia et ante quis sollicitudin. Etiam fringilla justo non augue consequat, id tempus erat dapibus. Quisque hendrerit urna eu nunc tincidunt, sit amet viverra est lacinia. Vivamus dictum libero sit amet eros ultricies, ut consectetur urna venenatis."
})

comment_44 = Comment.create!({
    track: demo_track_11,
    user: demo_user_5,
    body: "Suspendisse laoreet at ex nec faucibus. Donec mollis, dolor non faucibus luctus, nunc mauris tempor nulla, eget iaculis tortor odio non elit. Duis vitae ligula gravida, dignissim lorem ac, ultricies erat. Ut vitae velit sollicitudin, faucibus quam a, posuere ipsum. Maecenas in risus nec eros ultricies posuere. Pellentesque rutrum fermentum egestas. Nam sagittis, urna a accumsan scelerisque, odio purus ultrices nisi, laoreet feugiat nisl leo at leo. Integer dictum tortor vitae tellus aliquet, quis commodo ligula porta. Suspendisse purus dolor, porttitor commodo metus et, tincidunt sodales elit. Ut viverra luctus quam, eu auctor quam ultrices ut. Vestibulum libero risus, ornare ac pharetra ac, facilisis sed eros. Mauris ut imperdiet lectus, quis porta justo. Vestibulum nisi purus, malesuada eget bibendum ac, egestas id tellus. Donec eget maximus orci. Etiam eleifend, quam nec maximus tempor, turpis risus porttitor turpis, et tristique magna tellus eget enim."
})

comment_45 = Comment.create!({
    track: demo_track_12,
    user: demo_user_18,
    body: "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed elit orci, consectetur ut sem eu, facilisis ultricies leo. In hac habitasse platea dictumst. Aenean tempus nibh enim, vel condimentum ante cursus sed. In faucibus convallis tellus in cursus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam euismod ultricies eros nec tristique. Proin ut est neque. Nulla facilisi. Suspendisse potenti. Curabitur accumsan magna vitae quam iaculis, et blandit augue fringilla."
})

comment_46 = Comment.create!({
    track: demo_track_12,
    user: demo_user_5,
    parent_comment: comment_45,
    body: "Donec nec erat purus. Sed felis lorem, pulvinar vel mauris eget, sagittis scelerisque lacus. Duis et aliquet nunc. Nullam fringilla sem ut diam aliquam, vel congue risus aliquet. In lacus nisi, dapibus eget vestibulum ornare, sollicitudin nec ligula. Proin pulvinar mollis placerat. Fusce a lorem sed turpis vestibulum tempus. Morbi pellentesque diam sit amet est pharetra, vel varius sem mollis. Nunc eu nulla sagittis, hendrerit tellus non, elementum urna. Fusce molestie scelerisque enim, vitae iaculis leo. Quisque tempus venenatis augue nec finibus. Nam auctor porttitor felis, sed aliquet ipsum sollicitudin eu. Curabitur scelerisque tincidunt eros, in euismod eros sodales vitae. Praesent mi mi, tincidunt ac gravida id, commodo et eros. Nunc tristique luctus neque, at euismod massa lacinia vitae. Integer aliquet purus in augue dapibus venenatis."
})

comment_47 = Comment.create!({
    track: demo_track_12,
    user: demo_user_17,
    body: "Aenean urna mauris, tristique et elementum cursus, tristique posuere massa. Nam interdum sapien sit amet pulvinar viverra. Nullam sed magna quam. Nunc lacus tortor, porta sit amet felis vel, iaculis malesuada lorem. In augue risus, aliquet ac massa nec, aliquam scelerisque metus. Pellentesque suscipit ipsum pulvinar eros dapibus pretium. Vivamus eget est porttitor, imperdiet libero sit amet, pretium turpis. Donec porttitor diam non ipsum imperdiet elementum. Suspendisse vulputate sit amet augue non cursus. Vivamus aliquam urna et semper volutpat. Curabitur efficitur massa vitae sodales vestibulum. Morbi tempus, sem non vestibulum viverra, sem sem mattis libero, ut pretium magna tellus eget libero. Sed scelerisque elit at est facilisis, vehicula tempus magna vestibulum."
})

comment_48 = Comment.create!({
    track: demo_track_12,
    user: demo_user_1,
    body: "Duis et rutrum felis. Suspendisse rhoncus quam id diam aliquet, ornare pellentesque lacus pulvinar. Donec eget justo fringilla, consectetur metus in, cursus sapien. Donec sagittis dictum orci aliquam elementum. Nullam sit amet felis ac massa dignissim rhoncus at vitae mauris. Donec sed fringilla mauris, vel egestas ligula. Donec iaculis tellus sem, eu maximus nisl lacinia eu. Aliquam eget lobortis leo. Cras tristique eleifend condimentum. Aliquam sodales, orci ac dapibus venenatis, lorem diam tincidunt nisl, commodo aliquet tellus magna at turpis. Aenean vel iaculis arcu. Aliquam erat volutpat. Quisque hendrerit urna feugiat elit porttitor aliquam. Duis id ante faucibus, sodales massa sed, facilisis ex. Quisque tincidunt semper sapien a euismod."
})

comment_49 = Comment.create!({
    track: demo_track_13,
    user: demo_user_4,
    body: "Duis eu dolor nec mi hendrerit vehicula. Quisque ut elit et ligula dapibus ultrices. Nunc purus velit, scelerisque dapibus interdum nec, facilisis vitae nisi. Nulla volutpat vitae dolor id varius. Ut id dapibus sapien. Quisque vel vulputate metus. Nullam tempus lectus ex, at aliquet erat varius nec. Donec eget nisi at ex ullamcorper ultrices id dictum dui. Curabitur ultrices bibendum ligula, quis mollis dolor fringilla in. Curabitur congue ornare elit, nec fringilla tortor ornare ac. Nulla hendrerit tristique lacus, a hendrerit quam scelerisque et. In hac habitasse platea dictumst. Quisque maximus hendrerit dapibus. Donec volutpat tincidunt massa. Praesent sagittis sem dolor, sed finibus orci aliquet in."
})

comment_50 = Comment.create!({
    track: demo_track_13,
    user: demo_user_3,
    body: "Donec luctus massa et lorem tempus lacinia. Vivamus pulvinar eu ex eu imperdiet. Etiam eu gravida eros, nec suscipit tellus. Morbi nec sollicitudin nisi. Aliquam vitae elementum arcu. Praesent non dui iaculis, porta dui sed, tincidunt est. Sed sed enim libero. Morbi non tincidunt metus, vel pulvinar urna. Phasellus cursus pellentesque turpis non mollis. Suspendisse placerat feugiat est, in semper sapien ornare a."
})

comment_51 = Comment.create!({
    track: demo_track_13,
    user: demo_user_19,
    parent_comment: comment_50,
    body: "Vivamus gravida ex et enim pulvinar, non tincidunt elit finibus. Pellentesque quis tempus tortor. Aliquam lobortis pellentesque rutrum. Mauris eleifend ante tortor, sit amet lobortis felis venenatis at. Cras eu pellentesque sem. Nam in tempus orci. Suspendisse consectetur consectetur libero, eget venenatis metus lobortis in. Nulla vel tincidunt nunc. Praesent augue mauris, ultrices id ligula et, euismod venenatis nisi. Etiam feugiat enim justo, quis maximus libero vehicula et."
})

comment_52 = Comment.create!({
    track: demo_track_13,
    user: demo_user_18,
    body: "Nunc vel massa mollis, ornare nisl vel, accumsan neque. Sed dignissim magna in leo interdum, id tempor mi bibendum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam sapien metus, vehicula ac tellus at, volutpat accumsan augue. Praesent lectus risus, rhoncus ac lacus in, maximus egestas est. Suspendisse vel sagittis metus. Vestibulum bibendum ac mi sed euismod. Ut vulputate dictum leo, nec consequat dui volutpat fringilla. Phasellus lobortis, felis vitae interdum molestie, libero purus luctus lorem, quis aliquam mauris dolor sit amet magna. Nulla facilisi. Vivamus ut magna in tortor posuere tempus vel ac magna. Proin molestie nisl enim, ut pretium mi ullamcorper vitae. Nulla scelerisque pulvinar magna, ac posuere velit dignissim et. Pellentesque euismod felis id dolor aliquet, sed feugiat ante porttitor. Morbi dictum feugiat risus, eget condimentum ipsum tristique et."
})

comment_53 = Comment.create!({
    track: demo_track_14,
    user: demo_user_19,
    body: "Vestibulum sit amet malesuada dolor, sit amet sodales augue. In dignissim enim ac dictum rutrum. Praesent sem magna, dignissim id eleifend id, imperdiet quis augue. Ut dignissim euismod molestie. In ornare, erat facilisis maximus facilisis, nibh nisl bibendum massa, quis laoreet odio ipsum suscipit est. Morbi sed posuere enim. In sed purus arcu. Curabitur vulputate nulla sit amet lacus convallis ultrices. Phasellus et leo ac turpis volutpat eleifend. Etiam bibendum elementum congue. Proin et ipsum sit amet sem ultrices vehicula id nec enim. Donec semper luctus rhoncus."
})

comment_54 = Comment.create!({
    track: demo_track_14,
    user: demo_user_1,
    parent_comment: comment_53,
    body: "Nullam elementum porttitor tempor. Quisque vestibulum, nulla id molestie cursus, arcu massa tincidunt neque, nec finibus sem velit sit amet leo. Aliquam dignissim ultricies tristique. Integer mattis, neque eget accumsan laoreet, tortor magna tempor nunc, id fringilla elit erat sed magna. Vivamus ut lorem fringilla massa fermentum pretium non nec nunc. Donec eu metus eu nibh sodales viverra. Integer eu semper nulla. Mauris vel dignissim turpis."
})

comment_55 = Comment.create!({
    track: demo_track_14,
    user: demo_user_20,
    body: "Donec semper libero eu velit tristique maximus. Donec auctor dui eget velit mollis, id pulvinar eros mattis. Duis elementum velit metus, tincidunt interdum nunc congue eget. Duis vel fermentum odio. Nullam faucibus nulla vel ullamcorper tempor. Cras ac est semper, rhoncus nulla eget, tincidunt nibh. Aliquam ultrices nisi leo, a condimentum nibh gravida nec. Proin in odio sed diam semper feugiat a eget nibh. Vivamus dictum ligula quis ex faucibus, sit amet fermentum nulla egestas. Vestibulum erat sapien, blandit quis tortor sed, pulvinar auctor nulla. Mauris vestibulum consectetur ipsum, id tempus sem. Sed ligula massa, congue id nunc ut, pretium facilisis mauris. Aenean luctus metus vitae lectus viverra fermentum et aliquam urna. Cras ac arcu vel enim elementum congue ut quis ligula. Nunc convallis purus lectus."
})

comment_56 = Comment.create!({
    track: demo_track_14,
    user: demo_user_5,
    body: "Proin ipsum leo, sollicitudin at quam ac, pulvinar tristique sapien. Donec molestie auctor est. Proin efficitur lorem auctor lacus eleifend, sit amet rhoncus mi pellentesque. Etiam lorem dolor, ultrices non volutpat euismod, cursus ac lacus. Sed finibus semper nisl, at molestie purus ultrices vitae. Praesent elementum porttitor fermentum. Curabitur faucibus ligula at vehicula eleifend. Nullam in porta diam, non elementum lacus. Quisque at arcu urna. Suspendisse mollis convallis eros, varius viverra risus faucibus vel. Phasellus sem lorem, pretium id augue sed, dapibus ultrices lorem. Pellentesque viverra eros fermentum mauris laoreet ultrices. Nunc a urna sed quam facilisis condimentum. Aliquam eget sapien lectus. Quisque fringilla lectus sed odio posuere, quis sodales quam mollis."
})

comment_57 = Comment.create!({
    track: demo_track_15,
    user: demo_user_21,
    body: "Donec suscipit, ligula sed iaculis dictum, eros tellus eleifend ex, id aliquam risus purus pulvinar nunc. Fusce accumsan ante ut velit lobortis, at auctor diam porta. Aenean porttitor libero in dui ultricies feugiat. Etiam quis porttitor est, eu hendrerit mi. Phasellus viverra malesuada justo nec imperdiet. Nunc malesuada finibus velit, nec porta metus auctor ut. Nunc pellentesque ut velit ac hendrerit. Curabitur in pharetra dui. Maecenas eget vulputate leo."
})

comment_58 = Comment.create!({
    track: demo_track_15,
    user: demo_user_1,
    body: "Suspendisse in tristique nibh. Quisque gravida vitae tellus eu tincidunt. Sed non tristique justo, vel pellentesque lacus. Sed luctus lorem nec tempor tempor. Curabitur mollis sagittis purus, ac laoreet orci eleifend feugiat. Aliquam ut condimentum purus. Morbi interdum quam ligula, vitae gravida dolor maximus nec. Vivamus tempus odio vel auctor hendrerit. Suspendisse id efficitur sem. Pellentesque nec purus sem. Mauris sed condimentum metus, ut egestas lacus. Sed eu porttitor odio. Aliquam imperdiet augue ex, et mollis libero commodo eget. Suspendisse volutpat sollicitudin fermentum. Phasellus fringilla purus id magna euismod eleifend. Donec diam nunc, gravida ut ante et, condimentum congue nisi."
})

comment_59 = Comment.create!({
    track: demo_track_15,
    user: demo_user_2,
    body: "Nulla quis sem id magna suscipit egestas. Aenean posuere sagittis ante id lacinia. Morbi sed vestibulum velit. Nunc sagittis ultricies dolor, ac tristique velit vehicula nec. Nullam velit erat, pellentesque in purus in, rutrum dignissim mi. Nullam purus arcu, mollis sed aliquam at, facilisis in mauris. Mauris vel tempor turpis. Nunc scelerisque sagittis suscipit. Nullam laoreet cursus dictum. Suspendisse eros tortor, finibus eget tellus euismod, placerat semper tortor. Proin et felis nunc. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dapibus at nisl vel molestie."
})

comment_60 = Comment.create!({
    track: demo_track_15,
    user: demo_user_20,
    parent_comment: comment_59,
    body: "Nulla consequat venenatis mi in tincidunt. Duis tempor nibh neque, in blandit nibh egestas ut. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nunc porta enim eu ipsum auctor tristique. Suspendisse at diam non magna finibus sagittis. Duis commodo lectus a odio pharetra malesuada. Proin eget erat placerat, dignissim velit at, malesuada erat. Praesent blandit turpis eget risus condimentum ultricies. Vivamus a lacus non tortor aliquet consequat vitae ac quam. Aliquam vel lectus varius, bibendum nibh a, interdum nulla. Vestibulum tincidunt aliquam ante, at tempus mi elementum eget. Nunc eget neque quis tellus ornare feugiat. Nulla dapibus sodales nisl et dapibus. In in egestas tortor. Sed condimentum dignissim erat, non laoreet nibh bibendum non. Nulla ac sapien nec augue luctus tempor."
})

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