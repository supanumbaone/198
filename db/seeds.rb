# This seeds file was generated on:  09/30/2011 at 06:50 PM

#  Sally Do
user = User.create(
  :email                  => 's2do@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Sally',
  :last_name              => 'Do',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'abundali@ucsd.edu,adbudima@ucsd.edu,ealmada@ucsd.edu,hcchoi@ucsd.edu,hmwong@ucsd.edu,mpaysan@ucsd.edu,stian@ucsd.edu,yuc026@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Hyeong Min An
user = User.create(
  :email                  => 'hman@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Hyeong Min',
  :last_name              => 'An',
  :discussion_section_1   => 3,
  :discussion_section_2   => 3,
  :discussion_section_3   => 3,
  :preferred_teammates    => ''
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id}
])


#  Pengyu Wang
user = User.create(
  :email                  => 'pew007@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Pengyu',
  :last_name              => 'Wang',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'helin@ucsd.edu,lscastil@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Sheng Wang
user = User.create(
  :email                  => 'shw003@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Sheng',
  :last_name              => 'Wang',
  :discussion_section_1   => 0,
  :discussion_section_2   => 1,
  :discussion_section_3   => 2,
  :preferred_teammates    => 'acolmena@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'morning', :day_id => days[6].id}
])


#  Olga Sorokina
user = User.create(
  :email                  => 'osorokin@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Olga',
  :last_name              => 'Sorokina',
  :discussion_section_1   => 2,
  :discussion_section_2   => 1,
  :discussion_section_3   => 0,
  :preferred_teammates    => 'dpn003@ucsd.edu,jabarrie@ucsd.edu,jvivio@ucsd.edu,nheisey@ucsd.edu,salim@ucsd.edu,wjhollow@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Kazuhito Ochiai
user = User.create(
  :email                  => 'kaochiai@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Kazuhito',
  :last_name              => 'Ochiai',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => ''
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  Crystal Cross
user = User.create(
  :email                  => 'ctcross@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Crystal',
  :last_name              => 'Cross',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 0,
  :preferred_teammates    => ''
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  David Yoo
user = User.create(
  :email                  => 'dayoo@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'David',
  :last_name              => 'Yoo',
  :discussion_section_1   => 1,
  :discussion_section_2   => 0,
  :discussion_section_3   => 0,
  :preferred_teammates    => ''
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id}
])


#  Kristina Pinkerton
user = User.create(
  :email                  => 'kpinkert@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Kristina',
  :last_name              => 'Pinkerton',
  :discussion_section_1   => 1,
  :discussion_section_2   => 0,
  :discussion_section_3   => 2,
  :preferred_teammates    => ''
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id}
])


#  Patrick Guan
user = User.create(
  :email                  => 'pguan@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Patrick',
  :last_name              => 'Guan',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'abpeters@ucsd.edu,apunn@ucsd.edu,bcyip@ucsd.edu,dmcmille@ucsd.edu,dmcmille@ucsd.edu,jjauregu@ucsd.edu,lbmiller@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Rafael Nevarez
user = User.create(
  :email                  => 'rnevarez@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Rafael',
  :last_name              => 'Nevarez',
  :discussion_section_1   => 1,
  :discussion_section_2   => 0,
  :discussion_section_3   => 2,
  :preferred_teammates    => 'm1chuang@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  Kayla Kimura
user = User.create(
  :email                  => 'kmkimura@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Kayla',
  :last_name              => 'Kimura',
  :discussion_section_1   => 0,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => ''
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Helen Wong
user = User.create(
  :email                  => 'hmwong@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Helen',
  :last_name              => 'Wong',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 0,
  :preferred_teammates    => 'jrabinow@ucsd.edu,msin@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  michael chuang
user = User.create(
  :email                  => 'm1chuang@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'michael',
  :last_name              => 'chuang',
  :discussion_section_1   => 1,
  :discussion_section_2   => 0,
  :discussion_section_3   => 2,
  :preferred_teammates    => ''
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  Melvin Sin
user = User.create(
  :email                  => 'msin@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Melvin',
  :last_name              => 'Sin',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 0,
  :preferred_teammates    => 'hmwong@ucsd.edu,jmasehil@ucsd.edu,jrabinow@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'morning', :day_id => days[6].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Thinh Nguyen
user = User.create(
  :email                  => 'thn024@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Thinh',
  :last_name              => 'Nguyen',
  :discussion_section_1   => 1,
  :discussion_section_2   => 0,
  :discussion_section_3   => 0,
  :preferred_teammates    => ''
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Kevin Lau Fang
user = User.create(
  :email                  => 'klaufang@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Kevin',
  :last_name              => 'Lau Fang',
  :discussion_section_1   => 1,
  :discussion_section_2   => 0,
  :discussion_section_3   => 2,
  :preferred_teammates    => 'cyc025@ucsd.edu,e5chung@ucsd.edu,j6yeh@ucsd.edu,stian@ucsd.edu,yuc026@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Eric Chung
user = User.create(
  :email                  => 'e5chung@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Eric',
  :last_name              => 'Chung',
  :discussion_section_1   => 2,
  :discussion_section_2   => 1,
  :discussion_section_3   => 0,
  :preferred_teammates    => 'cyc025@ucsd.edu,klaufang@ucsd.edu,yuc026@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'morning', :day_id => days[6].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Evan Walker
user = User.create(
  :email                  => 'ekwalker@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Evan',
  :last_name              => 'Walker',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => ''
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Jake Rabinowitz
user = User.create(
  :email                  => 'jrabinow@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Jake',
  :last_name              => 'Rabinowitz',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'hmwong@ucsd.edu,msin@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Joel Jauregui
user = User.create(
  :email                  => 'jjauregui@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Joel',
  :last_name              => 'Jauregui',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'abpeters@ucsd.edu,apunn@ucsd.edu,bcyip@ucsd.edu,dmcmille@ucsd.edu,lbmiller@ucsd.edu,pguan@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Quynh Nguyen
user = User.create(
  :email                  => 'qun003@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Quynh',
  :last_name              => 'Nguyen',
  :discussion_section_1   => 1,
  :discussion_section_2   => 0,
  :discussion_section_3   => 0,
  :preferred_teammates    => 'klapidar@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id}
])


#  Kelvin Lapidario
user = User.create(
  :email                  => 'klapidar@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Kelvin',
  :last_name              => 'Lapidario',
  :discussion_section_1   => 1,
  :discussion_section_2   => 0,
  :discussion_section_3   => 0,
  :preferred_teammates    => 'qun003@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id}
])


#  Jordan Sendar
user = User.create(
  :email                  => 'jsendar@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Jordan',
  :last_name              => 'Sendar',
  :discussion_section_1   => 3,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'abpeters@ucsd.edu,apunn@ucsd.edu,bcyip@ucsd.edu,dmcmille@ucsd.edu,jjauregu@ucsd.edu,lbmiller@ucsd.edu,pguan@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  Jonathan Masehi-Lano
user = User.create(
  :email                  => 'jmasehil@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Jonathan',
  :last_name              => 'Masehi-Lano',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'msin@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Brian Yip
user = User.create(
  :email                  => 'bcyip@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Brian',
  :last_name              => 'Yip',
  :discussion_section_1   => 3,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'abpeters@ucsd.edu,apunn@ucsd.edu,dmcmille@ucsd.edu,jjauregu@ucsd.edu,jsendar@ucsd.edu,lbmiller@ucsd.edu,pguan@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id}
])


#  Haronid Moncivais
user = User.create(
  :email                  => 'hmonciva@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Haronid',
  :last_name              => 'Moncivais',
  :discussion_section_1   => 1,
  :discussion_section_2   => 0,
  :discussion_section_3   => 0,
  :preferred_teammates    => 'fyzhou@ucsd.edu,gaponce@ucsd.edu,jabarrie@ucsd.edu,jnogales@ucsd.edu,nheisey@ucsd.edu,smalani@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id}
])


#  Yuja Chang
user = User.create(
  :email                  => 'yuc026@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Yuja',
  :last_name              => 'Chang',
  :discussion_section_1   => 1,
  :discussion_section_2   => 0,
  :discussion_section_3   => 0,
  :preferred_teammates    => 'e5chung@ucsd.edu,klaufang@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'morning', :day_id => days[6].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Solomon Davidsohn
user = User.create(
  :email                  => 'sdavidso@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Solomon',
  :last_name              => 'Davidsohn',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => ''
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  Janet Barrientos
user = User.create(
  :email                  => 'jabarrie@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Janet',
  :last_name              => 'Barrientos',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'fyzhou@ucsd.edu,gaponce@ucsd.edu,hmonciva@ucsd.edu,jnogales@ucsd.edu,mgaeta@ucsd.edu,smalani@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Kevin He
user = User.create(
  :email                  => 'kehe@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Kevin',
  :last_name              => 'He',
  :discussion_section_1   => 2,
  :discussion_section_2   => 1,
  :discussion_section_3   => 3,
  :preferred_teammates    => ''
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'morning', :day_id => days[6].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Michael Hii
user = User.create(
  :email                  => 'mhii@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Michael',
  :last_name              => 'Hii',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => ''
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id}
])


#  Shen Tian
user = User.create(
  :email                  => 'stian@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Shen',
  :last_name              => 'Tian',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'ctcross@ucsd.edu,cyc025@ucsd.edu,j6yeh@ucsd.edu,klaufang@ucsd.edu,msono@ucsd.edu,s2do@ucsd.edu,thodgkin@ucsd.edu,y3tsai@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  Henry Lin
user = User.create(
  :email                  => 'helin@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Henry',
  :last_name              => 'Lin',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => ''
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Suman Malani
user = User.create(
  :email                  => 'smalani@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Suman',
  :last_name              => 'Malani',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 2,
  :preferred_teammates    => 'fyzhou@ucsd.edu,gaponce@ucsd.edu,hmonciva@ucsd.edu,jabarrie@ucsd.edu,jnogales@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Chuan Yi Chang
user = User.create(
  :email                  => 'cyc025@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Chuan Yi',
  :last_name              => 'Chang',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'kcl007@ucsd.edu,msono@ucsd.edu,stian@ucsd.edu,thodgkin@ucsd.edu,y3tsai@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Cong Qin
user = User.create(
  :email                  => 'coqin@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Cong',
  :last_name              => 'Qin',
  :discussion_section_1   => 2,
  :discussion_section_2   => 3,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'aychow@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Arick Chow
user = User.create(
  :email                  => 'aychow@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Arick',
  :last_name              => 'Chow',
  :discussion_section_1   => 3,
  :discussion_section_2   => 3,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'coqin@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id}
])


#  Matthew Borger
user = User.create(
  :email                  => 'mborger@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Matthew',
  :last_name              => 'Borger',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'fespino@ucsd.edu,hcchoi@ucsd.edu,qmle@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Daniel Valles
user = User.create(
  :email                  => 'dvalles@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Daniel',
  :last_name              => 'Valles',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 0,
  :preferred_teammates    => ''
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id}
])


#  Edwin Tao
user = User.create(
  :email                  => 'etao@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Edwin',
  :last_name              => 'Tao',
  :discussion_section_1   => 3,
  :discussion_section_2   => 1,
  :discussion_section_3   => 2,
  :preferred_teammates    => 'b1duong@ucsd.edu,boshu@ucsd.edu,ftao@ucsd.edu,k7zhang@ucsd.edu,mkchu@ucsd.edu,ttt031@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  Mahir Kalra
user = User.create(
  :email                  => 'mskalra@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Mahir',
  :last_name              => 'Kalra',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'abundali@ucsd.edu,adbudima@ucsd.edu,c2chang@ucsd.edu,ealmada@ucsd.edu,erlim@ucsd.edu,hman@ucsd.edu,nasuncio@ucsd.edu,nmlau@ucsd.edu,rscastro@ucsd.edu,shsok@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'morning', :day_id => days[6].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Gabriela Ponce
user = User.create(
  :email                  => 'gaponce@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Gabriela',
  :last_name              => 'Ponce',
  :discussion_section_1   => 1,
  :discussion_section_2   => 0,
  :discussion_section_3   => 0,
  :preferred_teammates    => 'ergalleg@ucsd.edu,fyzhou@ucsd.edu,hmonciva@ucsd.edu,jabarrie@ucsd.edu,jnogales@ucsd.edu,mgaeta@ucsd.edu,nheisey@ucsd.edu,smalani@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id}
])


#  James Newman
user = User.create(
  :email                  => 'jcnewman@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'James',
  :last_name              => 'Newman',
  :discussion_section_1   => 2,
  :discussion_section_2   => 1,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'a6dang@ucsd.edu,kazares@ucsd.edu,salim@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Christopher Chang
user = User.create(
  :email                  => 'c2chang@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Christopher',
  :last_name              => 'Chang',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'abundali@ucsd.edu,ealmada@ucsd.edu,erlim@ucsd.edu,hman@ucsd.edu,mskalra@ucsd.edu,nasuncio@ucsd.edu,rscastro@ucsd.edu,shsok@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  Andrew Shen
user = User.create(
  :email                  => 'ayshen@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Andrew',
  :last_name              => 'Shen',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'acng@ucsd.edu,ding@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Brian Truong
user = User.create(
  :email                  => 'bntruong@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Brian',
  :last_name              => 'Truong',
  :discussion_section_1   => 3,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'amcguire@ucsd.edu,dpn003@ucsd.edu,srtanaka@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Kerwin Azares
user = User.create(
  :email                  => 'kazares@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Kerwin',
  :last_name              => 'Azares',
  :discussion_section_1   => 2,
  :discussion_section_2   => 1,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'a6dang@ucsd.edu,bcyip@ucsd.edu,jcnewman@ucsd.edu,jnogales@ucsd.edu,nasuncio@ucsd.edu,salim@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Miguel Paysan
user = User.create(
  :email                  => 'mpaysan@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Miguel',
  :last_name              => 'Paysan',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'abundali@ucsd.edu,ealmada@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  Jonathan Cui
user = User.create(
  :email                  => 'jhcui@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Jonathan',
  :last_name              => 'Cui',
  :discussion_section_1   => 1,
  :discussion_section_2   => 0,
  :discussion_section_3   => 0,
  :preferred_teammates    => 'd2lam@ucsd.edu,j5chan@ucsd.edu,klaw@ucsd.edu,nasuncio@ucsd.edu,sschmidl@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'morning', :day_id => days[6].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Christopher Leung
user = User.create(
  :email                  => 'c4leung@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Christopher',
  :last_name              => 'Leung',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => ''
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Chienming Yang
user = User.create(
  :email                  => 'chy006@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Chienming',
  :last_name              => 'Yang',
  :discussion_section_1   => 2,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'e5chung@ucsd.edu,jwyoon@ucsd.edu,klaufang@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Kevin Caasi
user = User.create(
  :email                  => 'kcaasi@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Kevin',
  :last_name              => 'Caasi',
  :discussion_section_1   => 0,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => ''
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Lance Castillo
user = User.create(
  :email                  => 'lscastil@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Lance',
  :last_name              => 'Castillo',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => ''
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Justin Shitanishi
user = User.create(
  :email                  => 'jshitani@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Justin',
  :last_name              => 'Shitanishi',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 3,
  :preferred_teammates    => ''
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  Masaki Sono
user = User.create(
  :email                  => 'msono@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Masaki',
  :last_name              => 'Sono',
  :discussion_section_1   => 2,
  :discussion_section_2   => 1,
  :discussion_section_3   => 3,
  :preferred_teammates    => ''
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  sangjoon lee
user = User.create(
  :email                  => 'sal009@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'sangjoon',
  :last_name              => 'lee',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'jws001@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Nathan Heisey
user = User.create(
  :email                  => 'nheisey@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Nathan',
  :last_name              => 'Heisey',
  :discussion_section_1   => 3,
  :discussion_section_2   => 1,
  :discussion_section_3   => 2,
  :preferred_teammates    => 'fyzhou@ucsd.edu,gaponce@ucsd.edu,hmonciva@ucsd.edu,jabarrie@ucsd.edu,jvivio@ucsd.edu,smalani@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  Kenneth Law
user = User.create(
  :email                  => 'klaw@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Kenneth',
  :last_name              => 'Law',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'd2lam@ucsd.edu,j5chan@ucsd.edu,jhcui@ucsd.edu,nasuncio@ucsd.edu,sschmidl@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id}
])


#  Carla Sun
user = User.create(
  :email                  => 'cesun@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Carla',
  :last_name              => 'Sun',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'dvalles@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'morning', :day_id => days[6].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id}
])


#  Ernest Lim
user = User.create(
  :email                  => 'erlim@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Ernest',
  :last_name              => 'Lim',
  :discussion_section_1   => 3,
  :discussion_section_2   => 3,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'c2chang@ucsd.edu,hman@ucsd.edu,mskalra@ucsd.edu,rscastro@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Andrew Ng
user = User.create(
  :email                  => 'acng@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Andrew',
  :last_name              => 'Ng',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'adorai@ucsd.edu,ding@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Sandy Lim
user = User.create(
  :email                  => 'salim@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Sandy',
  :last_name              => 'Lim',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'a6dang@ucsd.edu,jcnewman@ucsd.edu,jnogales@ucsd.edu,kazares@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'morning', :day_id => days[6].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Aravindh Dorai
user = User.create(
  :email                  => 'adorai@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Aravindh',
  :last_name              => 'Dorai',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'acng@ucsd.edu,amuinos@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Matthew Olaranont
user = User.create(
  :email                  => 'molarano@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Matthew',
  :last_name              => 'Olaranont',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'jcallawa@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  Joyce Yeh
user = User.create(
  :email                  => 'j6yeh@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Joyce',
  :last_name              => 'Yeh',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'e5chung@ucsd.edu,klaufang@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'morning', :day_id => days[6].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  William Holloway
user = User.create(
  :email                  => 'wjhollow@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'William',
  :last_name              => 'Holloway',
  :discussion_section_1   => 2,
  :discussion_section_2   => 1,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'nheisey@ucsd.edu,osorokin@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Dao Lam
user = User.create(
  :email                  => 'd2lam@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Dao',
  :last_name              => 'Lam',
  :discussion_section_1   => 1,
  :discussion_section_2   => 0,
  :discussion_section_3   => 0,
  :preferred_teammates    => 'j5chan@ucsd.edu,jhcui@ucsd.edu,klaw@ucsd.edu,nasuncio@ucsd.edu,sschmidl@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Bowen  Shu
user = User.create(
  :email                  => 'boshu@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Bowen ',
  :last_name              => 'Shu',
  :discussion_section_1   => 3,
  :discussion_section_2   => 1,
  :discussion_section_3   => 2,
  :preferred_teammates    => 'b1duong@ucsd.edu,etao@ucsd.edu,ftao@ucsd.edu,k7zhang@ucsd.edu,mkchu@ucsd.edu,ttt031@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Franklin Zhou
user = User.create(
  :email                  => 'fyzhou@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Franklin',
  :last_name              => 'Zhou',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'gaponce@ucsd.edu,hmonciva@ucsd.edu,jabarrie@ucsd.edu,jcallawa@ucsd.edu,jnogales@ucsd.edu,kazares@ucsd.edu,smalani@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Jackson Callaway
user = User.create(
  :email                  => 'jcallawa@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Jackson',
  :last_name              => 'Callaway',
  :discussion_section_1   => 3,
  :discussion_section_2   => 1,
  :discussion_section_3   => 2,
  :preferred_teammates    => 'fyzhou@ucsd.edu,kkchon@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id}
])


#  elioth almada
user = User.create(
  :email                  => 'ealmada@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'elioth',
  :last_name              => 'almada',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 0,
  :preferred_teammates    => 'abundali@ucsd.edu,mpaysan@ucsd.edu,mskalra@ucsd.edu,rscastro@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id}
])


#  NATHANIEL ASUNCION
user = User.create(
  :email                  => 'nasuncio@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'NATHANIEL',
  :last_name              => 'ASUNCION',
  :discussion_section_1   => 1,
  :discussion_section_2   => 3,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'd2lam@ucsd.edu,j5chan@ucsd.edu,jhcui@ucsd.edu,klaw@ucsd.edu,sschmidl@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Al Colmenar
user = User.create(
  :email                  => 'acolmena@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Al',
  :last_name              => 'Colmenar',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'shw003@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Kiley Sok
user = User.create(
  :email                  => 'shsok@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Kiley',
  :last_name              => 'Sok',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'abundali@ucsd.edu,c2chang@ucsd.edu,ealmada@ucsd.edu,erlim@ucsd.edu,hman@ucsd.edu,mskalra@ucsd.edu,nasuncio@ucsd.edu,nmlau@ucsd.edu,rscastro@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'morning', :day_id => days[6].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Alvin Bundalian
user = User.create(
  :email                  => 'abundali@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Alvin',
  :last_name              => 'Bundalian',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'ealmada@ucsd.edu,mpaysan@ucsd.edu,mskalra@ucsd.edu,rscastro@ucsd.edu,s2do@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Aria Arasteh
user = User.create(
  :email                  => 'aarasteh@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Aria',
  :last_name              => 'Arasteh',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => ''
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id}
])


#  Alex Peterson
user = User.create(
  :email                  => 'abpeters@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Alex',
  :last_name              => 'Peterson',
  :discussion_section_1   => 3,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'apunn@ucsd.edu,dmcmille@ucsd.edu,jjauregu@ucsd.edu,jsendar@ucsd.edu,lbmiller@ucsd.edu,pguan@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Jae Shin
user = User.create(
  :email                  => 'jws001@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Jae',
  :last_name              => 'Shin',
  :discussion_section_1   => 3,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'sal009@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id}
])


#  Richard Castro
user = User.create(
  :email                  => 'rscastro@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Richard',
  :last_name              => 'Castro',
  :discussion_section_1   => 3,
  :discussion_section_2   => 3,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'c2chang@ucsd.edu,hman@ucsd.edu,mskalra@ucsd.edu,nasuncio@ucsd.edu,nmlau@ucsd.edu,shsok@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'morning', :day_id => days[6].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Nicholas Lau
user = User.create(
  :email                  => 'nmlau@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Nicholas',
  :last_name              => 'Lau',
  :discussion_section_1   => 3,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'abundali@ucsd.edu,c2chang@ucsd.edu,ealmada@ucsd.edu,erlim@ucsd.edu,mskalra@ucsd.edu,nasuncio@ucsd.edu,rscastro@ucsd.edu,shsok@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'morning', :day_id => days[6].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Hosoo Choi
user = User.create(
  :email                  => 'hcchoi@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Hosoo',
  :last_name              => 'Choi',
  :discussion_section_1   => 3,
  :discussion_section_2   => 3,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'fespino@ucsd.edu,mborger@ucsd.edu,qmle@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Andrew Muinos
user = User.create(
  :email                  => 'amuinos@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Andrew',
  :last_name              => 'Muinos',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'acng@ucsd.edu,adorai@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Jacky Chan
user = User.create(
  :email                  => 'j5chan@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Jacky',
  :last_name              => 'Chan',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'd2lam@ucsd.edu,jhcui@ucsd.edu,nasuncio@ucsd.edu,sschmidl@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  Jonathan Nogales
user = User.create(
  :email                  => 'jnogales@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Jonathan',
  :last_name              => 'Nogales',
  :discussion_section_1   => 2,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'fyzhou@ucsd.edu,gaponce@ucsd.edu,hmonciva@ucsd.edu,jabarrie@ucsd.edu,kazares@ucsd.edu,salim@ucsd.edu,smalani@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id}
])


#  Lewis Miller
user = User.create(
  :email                  => 'lbmiller@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Lewis',
  :last_name              => 'Miller',
  :discussion_section_1   => 3,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'abpeters@ucsd.edu,apunn@ucsd.edu,bcyip@ucsd.edu,dmcmille@ucsd.edu,jjauregu@ucsd.edu,jsendar@ucsd.edu,pguan@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  David Ing
user = User.create(
  :email                  => 'ding@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'David',
  :last_name              => 'Ing',
  :discussion_section_1   => 1,
  :discussion_section_2   => 0,
  :discussion_section_3   => 2,
  :preferred_teammates    => 'acng@ucsd.edu,ayshen@ucsd.edu,jws001@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Kevin Zhang
user = User.create(
  :email                  => 'k7zhang@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Kevin',
  :last_name              => 'Zhang',
  :discussion_section_1   => 3,
  :discussion_section_2   => 1,
  :discussion_section_3   => 2,
  :preferred_teammates    => 'b1duong@ucsd.edu,boshu@ucsd.edu,etao@ucsd.edu,ftao@ucsd.edu,mkchu@ucsd.edu,ttt031@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Anthony Dang
user = User.create(
  :email                  => 'a6dang@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Anthony',
  :last_name              => 'Dang',
  :discussion_section_1   => 2,
  :discussion_section_2   => 1,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'jcnewman@ucsd.edu,jnogales@ucsd.edu,kazares@ucsd.edu,salim@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Thomas Hoffman
user = User.create(
  :email                  => 'thoffman@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Thomas',
  :last_name              => 'Hoffman',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => ''
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Ambuj Punn
user = User.create(
  :email                  => 'apunn@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Ambuj',
  :last_name              => 'Punn',
  :discussion_section_1   => 0,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'abpeters@ucsd.edu,bcyip@ucsd.edu,dmcmille@ucsd.edu,jjauregu@ucsd.edu,jsendar@ucsd.edu,lbmiller@ucsd.edu,pguan@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id}
])


#  Feiran Tao
user = User.create(
  :email                  => 'ftao@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Feiran',
  :last_name              => 'Tao',
  :discussion_section_1   => 3,
  :discussion_section_2   => 1,
  :discussion_section_3   => 2,
  :preferred_teammates    => 'b1duong@ucsd.edu,boshu@ucsd.edu,etao@ucsd.edu,k7zhang@ucsd.edu,mkchu@ucsd.edu,ttt031@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Matthew Chu
user = User.create(
  :email                  => 'mkchu@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Matthew',
  :last_name              => 'Chu',
  :discussion_section_1   => 3,
  :discussion_section_2   => 1,
  :discussion_section_3   => 2,
  :preferred_teammates    => 'b1duong@ucsd.edu,boshu@ucsd.edu,etao@ucsd.edu,ftao@ucsd.edu,k7zhang@ucsd.edu,ttt031@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Andrew Budiman
user = User.create(
  :email                  => 'adbudima@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Andrew',
  :last_name              => 'Budiman',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'c2chang@ucsd.edu,hman@ucsd.edu,mskalra@ucsd.edu,nasuncio@ucsd.edu,nmlau@ucsd.edu,rscastro@ucsd.edu,shsok@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Christopher Avery
user = User.create(
  :email                  => 'sirusto@gmail.com',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Christopher',
  :last_name              => 'Avery',
  :discussion_section_1   => 3,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => ''
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Neyva Cisneros
user = User.create(
  :email                  => 'ncisnero@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Neyva',
  :last_name              => 'Cisneros',
  :discussion_section_1   => 3,
  :discussion_section_2   => 3,
  :discussion_section_3   => 1,
  :preferred_teammates    => ''
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Sheldon Tanaka
user = User.create(
  :email                  => 'srtanaka@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Sheldon',
  :last_name              => 'Tanaka',
  :discussion_section_1   => 3,
  :discussion_section_2   => 3,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'amcguire@ucsd.edu,bntruong@ucsd.edu,dpn003@ucsd.edu,mgaeta@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Minh Ta
user = User.create(
  :email                  => 'mqta@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Minh',
  :last_name              => 'Ta',
  :discussion_section_1   => 3,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'g5wang@ucsd.edu,jws001@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Kurt Selander
user = User.create(
  :email                  => 'kselande@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Kurt',
  :last_name              => 'Selander',
  :discussion_section_1   => 2,
  :discussion_section_2   => 1,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'a2hill@ucsd.edu,qmle@ucsd.edu,rangelo@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Thanh Tran
user = User.create(
  :email                  => 'ttt031@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Thanh',
  :last_name              => 'Tran',
  :discussion_section_1   => 3,
  :discussion_section_2   => 1,
  :discussion_section_3   => 2,
  :preferred_teammates    => 'b1duong@ucsd.edu,bkou@ucsd.edu,boshu@ucsd.edu,etao@ucsd.edu,ftao@ucsd.edu,k7zhang@ucsd.edu,mkchu@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Dorothy Nguyen
user = User.create(
  :email                  => 'dpn003@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Dorothy',
  :last_name              => 'Nguyen',
  :discussion_section_1   => 3,
  :discussion_section_2   => 3,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'amcguire@ucsd.edu,bntruong@ucsd.edu,srtanaka@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'morning', :day_id => days[6].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Ashley McGuire
user = User.create(
  :email                  => 'Amcguire@UCSD.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Ashley',
  :last_name              => 'McGuire',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'bntruong@ucsd.edu,dpn003@ucsd.edu,mgaeta@ucsd.edu,srtanaka@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Erik Gallegos
user = User.create(
  :email                  => 'ergalleg@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Erik',
  :last_name              => 'Gallegos',
  :discussion_section_1   => 1,
  :discussion_section_2   => 0,
  :discussion_section_3   => 0,
  :preferred_teammates    => 'gaponce@ucsd.edu,hmonciva@ucsd.edu,jabarrie@ucsd.edu,mgaeta@ucsd.edu,smalani@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id}
])


#  Freddy  Espino
user = User.create(
  :email                  => 'Fespino@UCSD.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Freddy ',
  :last_name              => 'Espino',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'fespino@ucsd.edu,hcchoi@ucsd.edu,mborger@ucsd.edu,qmle@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Samson Wong
user = User.create(
  :email                  => 'srwong@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Samson',
  :last_name              => 'Wong',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => ''
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Oren Radousky
user = User.create(
  :email                  => 'oradousk@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Oren',
  :last_name              => 'Radousky',
  :discussion_section_1   => 0,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => ''
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id}
])


#  Victor Vazquez
user = User.create(
  :email                  => 'vmvazque@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Victor',
  :last_name              => 'Vazquez',
  :discussion_section_1   => 2,
  :discussion_section_2   => 1,
  :discussion_section_3   => 3,
  :preferred_teammates    => ''
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id}
])


#  Kevin Chon
user = User.create(
  :email                  => 'kkchon@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Kevin',
  :last_name              => 'Chon',
  :discussion_section_1   => 0,
  :discussion_section_2   => 1,
  :discussion_section_3   => 2,
  :preferred_teammates    => 'fyzhou@ucsd.edu,jcallawa@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id}
])


#  Jong Yoon
user = User.create(
  :email                  => 'jwyoon@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Jong',
  :last_name              => 'Yoon',
  :discussion_section_1   => 0,
  :discussion_section_2   => 1,
  :discussion_section_3   => 2,
  :preferred_teammates    => 'boshu@ucsd.edu,chy006@ucsd.edu,e5chung@ucsd.edu,klaufang@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'morning', :day_id => days[6].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Brian Duong
user = User.create(
  :email                  => 'b1duong@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Brian',
  :last_name              => 'Duong',
  :discussion_section_1   => 3,
  :discussion_section_2   => 1,
  :discussion_section_3   => 2,
  :preferred_teammates    => 'boshu@ucsd.edu,etao@ucsd.edu,ftao@ucsd.edu,k7zhang@ucsd.edu,mkchu@ucsd.edu,ttt031@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Maria Gaeta
user = User.create(
  :email                  => 'mgaeta@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Maria',
  :last_name              => 'Gaeta',
  :discussion_section_1   => 2,
  :discussion_section_2   => 3,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'amcguire@ucsd.edu,bntruong@ucsd.edu,dpn003@ucsd.edu,srtanaka@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Parima Shah
user = User.create(
  :email                  => 'pashah@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Parima',
  :last_name              => 'Shah',
  :discussion_section_1   => 0,
  :discussion_section_2   => 1,
  :discussion_section_3   => 2,
  :preferred_teammates    => ''
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id}
])


#  Bryant Kou
user = User.create(
  :email                  => 'bkou@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Bryant',
  :last_name              => 'Kou',
  :discussion_section_1   => 2,
  :discussion_section_2   => 1,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'ttt031@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Quan Le
user = User.create(
  :email                  => 'qmle@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Quan',
  :last_name              => 'Le',
  :discussion_section_1   => 2,
  :discussion_section_2   => 3,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'fespino@ucsd.edu,hcchoi@ucsd.edu,j6yeh@ucsd.edu,mborger@ucsd.edu,rangelo@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Tyler Hodgkins
user = User.create(
  :email                  => 'thodgkin@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Tyler',
  :last_name              => 'Hodgkins',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => ''
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Austin Hill
user = User.create(
  :email                  => 'a2hill@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Austin',
  :last_name              => 'Hill',
  :discussion_section_1   => 0,
  :discussion_section_2   => 1,
  :discussion_section_3   => 0,
  :preferred_teammates    => 'kselande@ucsd.edu,qmle@ucsd.edu,rangelo@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Derrick McMillen
user = User.create(
  :email                  => 'dmcmille@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Derrick',
  :last_name              => 'McMillen',
  :discussion_section_1   => 3,
  :discussion_section_2   => 2,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'abpeters@ucsd.edu,apunn@ucsd.edu,bcyip@ucsd.edu,jjauregu@ucsd.edu,jsendar@ucsd.edu,lbmiller@ucsd.edu,pguan@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'morning', :day_id => days[5].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'morning', :day_id => days[6].id},
  {:chunk_of_time => 'afternoon', :day_id => days[6].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Scott Schmidl
user = User.create(
  :email                  => 'sschmidl@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Scott',
  :last_name              => 'Schmidl',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => 'd2lam@ucsd.edu,j5chan@ucsd.edu,jhcui@ucsd.edu,klaw@ucsd.edu,nasuncio@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  Byung Lee
user = User.create(
  :email                  => 'bjl007@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Byung',
  :last_name              => 'Lee',
  :discussion_section_1   => 0,
  :discussion_section_2   => 1,
  :discussion_section_3   => 2,
  :preferred_teammates    => ''
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id}
])


#  Kwan Chul Lee
user = User.create(
  :email                  => 'kcl007@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Kwan Chul',
  :last_name              => 'Lee',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'cyc025@ucsd.edu,jws001@ucsd.edu,sal009@ucsd.edu,thodgkin@ucsd.edu,y3tsai@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id}
])


#  John Vivio
user = User.create(
  :email                  => 'jvivio@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'John',
  :last_name              => 'Vivio',
  :discussion_section_1   => 1,
  :discussion_section_2   => 2,
  :discussion_section_3   => 3,
  :preferred_teammates    => ''
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id}
])


#  Radley Angelo
user = User.create(
  :email                  => 'rangelo@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Radley',
  :last_name              => 'Angelo',
  :discussion_section_1   => 3,
  :discussion_section_2   => 1,
  :discussion_section_3   => 0,
  :preferred_teammates    => 'a2hill@ucsd.edu,kselande@ucsd.edu,qmle@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[4].id},
  {:chunk_of_time => 'afternoon', :day_id => days[5].id}
])


#  Yun-Tsang Tsai
user = User.create(
  :email                  => 'y3tsai@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Yun-Tsang',
  :last_name              => 'Tsai',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'cyc025@ucsd.edu,jws001@ucsd.edu,kcl007@ucsd.edu,msono@ucsd.edu,thodgkin@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])


#  Benjamin Young
user = User.create(
  :email                  => 'byoung@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Benjamin',
  :last_name              => 'Young',
  :discussion_section_1   => 2,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'byoung@ucsd.edu,c4leung@ucsd.edu,gaponce@ucsd.edu,hmonciva@ucsd.edu,jcnewman@ucsd.edu,smalani@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'morning', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'morning', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'morning', :day_id => days[3].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'morning', :day_id => days[4].id}
])


#  Gary Wang
user = User.create(
  :email                  => 'g5wang@ucsd.edu',
  :password               => 'password',
  :password_confirmation  => 'password',
  :first_name             => 'Gary',
  :last_name              => 'Wang',
  :discussion_section_1   => 0,
  :discussion_section_2   => 0,
  :discussion_section_3   => 1,
  :preferred_teammates    => 'mqta@ucsd.ed'
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create([
  {:name => 'Wednesday', :schedule_id => schedule.id},
  {:name => 'Tuesday', :schedule_id => schedule.id},
  {:name => 'Saturday', :schedule_id => schedule.id},
  {:name => 'Sunday', :schedule_id => schedule.id},
  {:name => 'Monday', :schedule_id => schedule.id},
  {:name => 'Thursday', :schedule_id => schedule.id},
  {:name => 'Friday', :schedule_id => schedule.id}
])
TimeBlock.create([
  {:chunk_of_time => 'morning', :day_id => days[0].id},
  {:chunk_of_time => 'evening', :day_id => days[0].id},
  {:chunk_of_time => 'afternoon', :day_id => days[1].id},
  {:chunk_of_time => 'evening', :day_id => days[1].id},
  {:chunk_of_time => 'afternoon', :day_id => days[2].id},
  {:chunk_of_time => 'evening', :day_id => days[2].id},
  {:chunk_of_time => 'afternoon', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[3].id},
  {:chunk_of_time => 'evening', :day_id => days[4].id},
  {:chunk_of_time => 'evening', :day_id => days[5].id},
  {:chunk_of_time => 'evening', :day_id => days[6].id}
])
