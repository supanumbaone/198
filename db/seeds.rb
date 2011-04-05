# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

=begin
emails = []
i = 0
while i < 150
  emails << "#{i}@ucsd.edu"
  i += 1
end

i = 0
while i < 150
  r1 = rand(2)
  r2 = rand(2)
  if r1 == 0 && r2 == 0
    r3 = 1
  else
    r3 = rand(2)
  end
  
  number_of_preferred_teammates = rand(10)
  preferred_teammates = ""
  i = 0 
  while i < number_of_preferred_teammates
    teammate = rand(150)
    chosen_teammates = []
    if !chosen(chosen_teammates, teammate)
      chosen_teammates << teammate
      i += 1
    end
  end
  
  user = User.create(
    :email => emails[i],
    :password => "666666",
    :password_confirmation => "666666",
    :discussion_section_1 => r1,
    :discussion_section_2 => r2,
    :discussion_section_3 => r3,
    :preferred_teammates => "jsnyder@ucsd.edu, dabaraja@ucsd.edu, cnmorse@ucsd.edu, mjjones@ucsd.edu"
  )
  schedule = Schedule.create(
    :user_id => user.id
  )
  days = Day.create(
    [ {:name => "Wednesday", :schedule_id => schedule.id},
      {:name => "Friday", :schedule_id => schedule.id},
      {:name => "Saturday", :schedule_id => schedule.id},
      {:name => "Sunday", :schedule_id => schedule.id} ]
  )
  TimeBlock.create(
    [ {:chunk_of_time => "afternoon", :day_id => days[0].id},
      {:chunk_of_time => "evening", :day_id => days[0].id},
      {:chunk_of_time => "evening", :day_id => days[1].id},
      {:chunk_of_time => "morning", :day_id => days[2].id},
      {:chunk_of_time => "afternoon", :day_id => days[2].id},
      {:chunk_of_time => "evening", :day_id => days[2].id},
      {:chunk_of_time => "morning", :day_id => days[3].id},
      {:chunk_of_time => "afternoon", :day_id => days[3].id},
      {:chunk_of_time => "evening", :day_id => days[3].id} ]
  )
end

def self.chosen(nums, current)
  i = 0
  while i < nums.size
    return true if nums[i] == current
  end
  
  return false
end
=end

#  Brenton Bahry
user = User.create(
  :email => "bbahry@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Brenton",
  :last_name => "Bahry",
  :discussion_section_1 => 1,
  :discussion_section_2 => 2,
  :discussion_section_3 => 0,
  :preferred_teammates => "jsnyder@ucsd.edu, dabaraja@ucsd.edu, cnmorse@ucsd.edu, mjjones@ucsd.edu"
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Wednesday", :schedule_id => schedule.id},
    {:name => "Friday", :schedule_id => schedule.id},
    {:name => "Saturday", :schedule_id => schedule.id},
    {:name => "Sunday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "afternoon", :day_id => days[0].id},
    {:chunk_of_time => "evening", :day_id => days[0].id},
    {:chunk_of_time => "evening", :day_id => days[1].id},
    {:chunk_of_time => "morning", :day_id => days[2].id},
    {:chunk_of_time => "afternoon", :day_id => days[2].id},
    {:chunk_of_time => "evening", :day_id => days[2].id},
    {:chunk_of_time => "morning", :day_id => days[3].id},
    {:chunk_of_time => "afternoon", :day_id => days[3].id},
    {:chunk_of_time => "evening", :day_id => days[3].id} ]
)

#  Daniel Barajas
user = User.create(
  :email => "dabaraja@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Daniel",
  :last_name => "Barajas",
  :discussion_section_1 => 1,
  :discussion_section_2 => 2,
  :discussion_section_3 => 0,
  :preferred_teammates => "cnmorse@ucsd.edu, jsnyder@ucsd.edu, bbahry@ucsd.edu"
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Tuesday", :schedule_id => schedule.id},
    {:name => "Wednesday", :schedule_id => schedule.id},
    {:name => "Thursday", :schedule_id => schedule.id},
    {:name => "Friday", :schedule_id => schedule.id},
    {:name => "Saturday", :schedule_id => schedule.id},
    {:name => "Sunday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "evening", :day_id => days[0].id},
    {:chunk_of_time => "evening", :day_id => days[1].id},
    {:chunk_of_time => "evening", :day_id => days[2].id},
    {:chunk_of_time => "evening", :day_id => days[3].id},
    {:chunk_of_time => "morning", :day_id => days[4].id},
    {:chunk_of_time => "afternoon", :day_id => days[4].id},
    {:chunk_of_time => "evening", :day_id => days[4].id},
    {:chunk_of_time => "morning", :day_id => days[5].id},
    {:chunk_of_time => "afternoon", :day_id => days[5].id},
    {:chunk_of_time => "evening", :day_id => days[5].id} ]
)

#  Aram Danakian
user = User.create(
  :email => "adanakia@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Aram",
  :last_name => "Danakian",
  :discussion_section_1 => 1,
  :discussion_section_2 => 2,
  :discussion_section_3 => 0,
  :preferred_teammates => "mjjones@ucsd.edu, cnmorse@ucsd.edu, normanwu1990@ucsd.edu"
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Wednesday", :schedule_id => schedule.id},
    {:name => "Friday", :schedule_id => schedule.id},
    {:name => "Saturday", :schedule_id => schedule.id},
    {:name => "Sunday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "evening", :day_id => days[0].id},
    {:chunk_of_time => "evening", :day_id => days[1].id},
    {:chunk_of_time => "morning", :day_id => days[2].id},
    {:chunk_of_time => "afternoon", :day_id => days[2].id},
    {:chunk_of_time => "evening", :day_id => days[2].id},
    {:chunk_of_time => "morning", :day_id => days[3].id},
    {:chunk_of_time => "afternoon", :day_id => days[3].id},
    {:chunk_of_time => "evening", :day_id => days[3].id} ]
)

#  Matthew Jones
user = User.create(
  :email => "mjjones@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Matthew",
  :last_name => "Jones",
  :discussion_section_1 => 1,
  :discussion_section_2 => 2,
  :discussion_section_3 => 0,
  :preferred_teammates => "cnmorse@ucsd.edu, adanakia@ucsd.edu, normanwu1990@ucsd.edu"
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Monday", :schedule_id => schedule.id},
    {:name => "Tuesday", :schedule_id => schedule.id},
    {:name => "Wednesday", :schedule_id => schedule.id},
    {:name => "Thursday", :schedule_id => schedule.id},
    {:name => "Friday", :schedule_id => schedule.id},
    {:name => "Saturday", :schedule_id => schedule.id},
    {:name => "Sunday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "evening", :day_id => days[0].id},
    {:chunk_of_time => "morning", :day_id => days[1].id},
    {:chunk_of_time => "evening", :day_id => days[1].id},
    {:chunk_of_time => "evening", :day_id => days[2].id},
    {:chunk_of_time => "morning", :day_id => days[3].id},
    {:chunk_of_time => "evening", :day_id => days[3].id},
    {:chunk_of_time => "evening", :day_id => days[4].id},
    {:chunk_of_time => "morning", :day_id => days[5].id},
    {:chunk_of_time => "afternoon", :day_id => days[5].id},
    {:chunk_of_time => "evening", :day_id => days[5].id},
    {:chunk_of_time => "morning", :day_id => days[6].id},
    {:chunk_of_time => "afternoon", :day_id => days[6].id},
    {:chunk_of_time => "evening", :day_id => days[6].id} ]
)

#  Chad Morse
user = User.create(
  :email => "cnmorse@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Chad",
  :last_name => "Morse",
  :discussion_section_1 => 1,
  :discussion_section_2 => 2,
  :discussion_section_3 => 0,
  :preferred_teammates => "mjjones@ucsd.edu, adanakia@ucsd.edu, normanwu1990@ucsd.edu, dabaraja@ucsd.edu, jsnyder@ucsd.edu, bbahry@ucsd.edu"
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Monday", :schedule_id => schedule.id},
    {:name => "Wednesday", :schedule_id => schedule.id},
    {:name => "Friday", :schedule_id => schedule.id},
    {:name => "Saturday", :schedule_id => schedule.id},
    {:name => "Sunday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "evening", :day_id => days[0].id},
    {:chunk_of_time => "evening", :day_id => days[1].id},
    {:chunk_of_time => "morning", :day_id => days[2].id},
    {:chunk_of_time => "afternoon", :day_id => days[2].id},
    {:chunk_of_time => "evening", :day_id => days[2].id},
    {:chunk_of_time => "morning", :day_id => days[3].id},
    {:chunk_of_time => "afternoon", :day_id => days[3].id},
    {:chunk_of_time => "evening", :day_id => days[3].id},
    {:chunk_of_time => "morning", :day_id => days[4].id},
    {:chunk_of_time => "afternoon", :day_id => days[4].id},
    {:chunk_of_time => "evening", :day_id => days[4].id} ]
)

#  Jason Snyder
user = User.create(
  :email => "jsnyder@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Jason",
  :last_name => "Snyder",
  :discussion_section_1 => 1,
  :discussion_section_2 => 2,
  :discussion_section_3 => 0,
  :preferred_teammates => "mjjones@ucsd.edu, cnmorse@ucsd.edu, adanakia@ucsd.edu, normanwu1990@ucsd.edu, dabaraja@ucsd.edu, jsnyder@ucsd.edu, bbahry@ucsd.edu"
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Monday", :schedule_id => schedule.id},
    {:name => "Wednesday", :schedule_id => schedule.id},
    {:name => "Friday", :schedule_id => schedule.id},
    {:name => "Saturday", :schedule_id => schedule.id},
    {:name => "Sunday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "morning", :day_id => days[0].id},
    {:chunk_of_time => "afternoon", :day_id => days[0].id},
    {:chunk_of_time => "evening", :day_id => days[0].id},
    {:chunk_of_time => "morning", :day_id => days[1].id},
    {:chunk_of_time => "afternoon", :day_id => days[1].id},
    {:chunk_of_time => "evening", :day_id => days[1].id},
    {:chunk_of_time => "evening", :day_id => days[2].id},
    {:chunk_of_time => "morning", :day_id => days[3].id},
    {:chunk_of_time => "afternoon", :day_id => days[3].id},
    {:chunk_of_time => "evening", :day_id => days[3].id},
    {:chunk_of_time => "morning", :day_id => days[4].id},
    {:chunk_of_time => "afternoon", :day_id => days[4].id},
    {:chunk_of_time => "evening", :day_id => days[4].id} ]
)

#  Qihua Wu
user = User.create(
  :email => "normanwu1990@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Qihua",
  :last_name => "Wu",
  :discussion_section_1 => 1,
  :discussion_section_2 => 2,
  :discussion_section_3 => 0,
  :preferred_teammates => "mjjones@ucsd.edu, cnmorse@ucsd.edu, adanakia@ucsd.edu"
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Monday", :schedule_id => schedule.id},
    {:name => "Wednesday", :schedule_id => schedule.id},
    {:name => "Friday", :schedule_id => schedule.id},
    {:name => "Saturday", :schedule_id => schedule.id},
    {:name => "Sunday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "morning", :day_id => days[0].id},
    {:chunk_of_time => "evening", :day_id => days[0].id},
    {:chunk_of_time => "evening", :day_id => days[1].id},
    {:chunk_of_time => "morning", :day_id => days[2].id},
    {:chunk_of_time => "afternoon", :day_id => days[2].id},
    {:chunk_of_time => "evening", :day_id => days[2].id},
    {:chunk_of_time => "morning", :day_id => days[3].id},
    {:chunk_of_time => "afternoon", :day_id => days[3].id},
    {:chunk_of_time => "evening", :day_id => days[3].id},
    {:chunk_of_time => "morning", :day_id => days[4].id},
    {:chunk_of_time => "afternoon", :day_id => days[4].id},
    {:chunk_of_time => "evening", :day_id => days[4].id} ]
)

#  Nicholas Burbaum
user = User.create(
  :email => "nburbaum@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Nicholas",
  :last_name => "Burbaum",
  :discussion_section_1 => 1,
  :discussion_section_2 => 2,
  :discussion_section_3 => 0,
  :preferred_teammates => ""
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Wednesday", :schedule_id => schedule.id},
    {:name => "Friday", :schedule_id => schedule.id},
    {:name => "Saturday", :schedule_id => schedule.id},
    {:name => "Sunday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "morning", :day_id => days[0].id},
    {:chunk_of_time => "morning", :day_id => days[1].id},
    {:chunk_of_time => "afternoon", :day_id => days[1].id},
    {:chunk_of_time => "morning", :day_id => days[2].id},
    {:chunk_of_time => "evening", :day_id => days[2].id},
    {:chunk_of_time => "morning", :day_id => days[3].id},
    {:chunk_of_time => "evening", :day_id => days[3].id} ]
)

#  Kurtis Cheng
user = User.create(
  :email => "k9cheng@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Kurtis",
  :last_name => "Cheng",
  :discussion_section_1 => 1,
  :discussion_section_2 => 2,
  :discussion_section_3 => 0,
  :preferred_teammates => "klwin@ucsd.edu, leebrina@ucsd.edu"
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Monday", :schedule_id => schedule.id},
    {:name => "Tuesday", :schedule_id => schedule.id},
    {:name => "Wednesday", :schedule_id => schedule.id},
    {:name => "Thursday", :schedule_id => schedule.id},
    {:name => "Friday", :schedule_id => schedule.id},
    {:name => "Saturday", :schedule_id => schedule.id},
    {:name => "Sunday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "evening", :day_id => days[0].id},
    {:chunk_of_time => "afternoon", :day_id => days[1].id},
    {:chunk_of_time => "morning", :day_id => days[2].id},
    {:chunk_of_time => "afternoon", :day_id => days[2].id},
    {:chunk_of_time => "afternoon", :day_id => days[3].id},
    {:chunk_of_time => "afternoon", :day_id => days[4].id},
    {:chunk_of_time => "morning", :day_id => days[5].id},
    {:chunk_of_time => "afternoon", :day_id => days[5].id},
    {:chunk_of_time => "evening", :day_id => days[5].id},
    {:chunk_of_time => "morning", :day_id => days[6].id},
    {:chunk_of_time => "afternoon", :day_id => days[6].id},
    {:chunk_of_time => "evening", :day_id => days[6].id} ]
)

#  Eric Dorman
user = User.create(
  :email => "edorman@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Eric",
  :last_name => "Dorman",
  :discussion_section_1 => 1,
  :discussion_section_2 => 2,
  :discussion_section_3 => 0,
  :preferred_teammates => "klwin@ucsd.edu, leebrina@ucsd.edu"
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Monday", :schedule_id => schedule.id},
    {:name => "Tuesday", :schedule_id => schedule.id},
    {:name => "Wednesday", :schedule_id => schedule.id},
    {:name => "Thursday", :schedule_id => schedule.id},
    {:name => "Friday", :schedule_id => schedule.id},
    {:name => "Saturday", :schedule_id => schedule.id},
    {:name => "Sunday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "morning", :day_id => days[0].id},
    {:chunk_of_time => "afternoon", :day_id => days[1].id},
    {:chunk_of_time => "morning", :day_id => days[2].id},
    {:chunk_of_time => "afternoon", :day_id => days[3].id},
    {:chunk_of_time => "morning", :day_id => days[4].id},
    {:chunk_of_time => "morning", :day_id => days[5].id},
    {:chunk_of_time => "evening", :day_id => days[5].id},
    {:chunk_of_time => "morning", :day_id => days[6].id},
    {:chunk_of_time => "evening", :day_id => days[6].id} ]
)

#  Eric Fung
user = User.create(
  :email => "evfung@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Eric",
  :last_name => "Fung",
  :discussion_section_1 => 1,
  :discussion_section_2 => 2,
  :discussion_section_3 => 0,
  :preferred_teammates => ""
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Monday", :schedule_id => schedule.id},
    {:name => "Tuesday", :schedule_id => schedule.id},
    {:name => "Wednesday", :schedule_id => schedule.id},
    {:name => "Thursday", :schedule_id => schedule.id},
    {:name => "Friday", :schedule_id => schedule.id},
    {:name => "Saturday", :schedule_id => schedule.id},
    {:name => "Sunday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "morning", :day_id => days[0].id},
    {:chunk_of_time => "afternoon", :day_id => days[1].id},
    {:chunk_of_time => "morning", :day_id => days[2].id},
    {:chunk_of_time => "afternoon", :day_id => days[3].id},
    {:chunk_of_time => "afternoon", :day_id => days[4].id},
    {:chunk_of_time => "morning", :day_id => days[5].id},
    {:chunk_of_time => "evening", :day_id => days[5].id},
    {:chunk_of_time => "morning", :day_id => days[6].id},
    {:chunk_of_time => "evening", :day_id => days[6].id} ]
)

#  Brina Lee
user = User.create(
  :email => "leebrina@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Brina",
  :last_name => "Lee",
  :discussion_section_1 => 1,
  :discussion_section_2 => 2,
  :discussion_section_3 => 0,
  :preferred_teammates => "klwin@ucsd.edu, k9cheng@ucsd.edu"
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Tuesday", :schedule_id => schedule.id},
    {:name => "Wednesday", :schedule_id => schedule.id},
    {:name => "Thursday", :schedule_id => schedule.id},
    {:name => "Saturday", :schedule_id => schedule.id},
    {:name => "Sunday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "evening", :day_id => days[0].id},
    {:chunk_of_time => "morning", :day_id => days[1].id},
    {:chunk_of_time => "evening", :day_id => days[1].id},
    {:chunk_of_time => "morning", :day_id => days[2].id},
    {:chunk_of_time => "afternoon", :day_id => days[2].id},
    {:chunk_of_time => "evening", :day_id => days[2].id},
    {:chunk_of_time => "morning", :day_id => days[3].id},
    {:chunk_of_time => "evening", :day_id => days[3].id},
    {:chunk_of_time => "morning", :day_id => days[4].id},
    {:chunk_of_time => "evening", :day_id => days[4].id} ]
)

#  Ko Ko Lwin
user = User.create(
  :email => "klwin@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Ko Ko",
  :last_name => "Lwin",
  :discussion_section_1 => 1,
  :discussion_section_2 => 2,
  :discussion_section_3 => 0,
  :preferred_teammates => "leebrina@ucsd.edu, k9cheng@ucsd.edu"
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Tuesday", :schedule_id => schedule.id},
    {:name => "Wednesday", :schedule_id => schedule.id},
    {:name => "Thursday", :schedule_id => schedule.id},
    {:name => "Saturday", :schedule_id => schedule.id},
    {:name => "Sunday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "morning", :day_id => days[0].id},
    {:chunk_of_time => "afternoon", :day_id => days[0].id},
    {:chunk_of_time => "evening", :day_id => days[0].id},
    {:chunk_of_time => "morning", :day_id => days[1].id},
    {:chunk_of_time => "evening", :day_id => days[1].id},
    {:chunk_of_time => "morning", :day_id => days[2].id},
    {:chunk_of_time => "afternoon", :day_id => days[2].id},
    {:chunk_of_time => "morning", :day_id => days[3].id},
    {:chunk_of_time => "evening", :day_id => days[3].id},
    {:chunk_of_time => "morning", :day_id => days[4].id},
    {:chunk_of_time => "evening", :day_id => days[4].id} ]
)

#  Nicholas Collins
user = User.create(
  :email => "nacollin@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Kurtis",
  :last_name => "Cheng",
  :discussion_section_1 => 0,
  :discussion_section_2 => 1,
  :discussion_section_3 => 2,
  :preferred_teammates => ""
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Monday", :schedule_id => schedule.id},
    {:name => "Tuesday", :schedule_id => schedule.id},
    {:name => "Wednesday", :schedule_id => schedule.id},
    {:name => "Thursday", :schedule_id => schedule.id},
    {:name => "Friday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "evening", :day_id => days[0].id},
    {:chunk_of_time => "evening", :day_id => days[1].id},
    {:chunk_of_time => "morning", :day_id => days[2].id},
    {:chunk_of_time => "evening", :day_id => days[3].id},
    {:chunk_of_time => "morning", :day_id => days[4].id},
    {:chunk_of_time => "afternoon", :day_id => days[4].id} ]
)

#  John Kim
user = User.create(
  :email => "jnk003@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "John",
  :last_name => "Kim",
  :discussion_section_1 => 0,
  :discussion_section_2 => 1,
  :discussion_section_3 => 2,
  :preferred_teammates => ""
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Monday", :schedule_id => schedule.id},
    {:name => "Tuesday", :schedule_id => schedule.id},
    {:name => "Wednesday", :schedule_id => schedule.id},
    {:name => "Thursday", :schedule_id => schedule.id},
    {:name => "Friday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "morning", :day_id => days[0].id},
    {:chunk_of_time => "evening", :day_id => days[0].id},
    {:chunk_of_time => "morning", :day_id => days[1].id},
    {:chunk_of_time => "evening", :day_id => days[1].id},
    {:chunk_of_time => "morning", :day_id => days[2].id},
    {:chunk_of_time => "evening", :day_id => days[2].id},
    {:chunk_of_time => "morning", :day_id => days[3].id},
    {:chunk_of_time => "evening", :day_id => days[3].id},
    {:chunk_of_time => "morning", :day_id => days[4].id},
    {:chunk_of_time => "evening", :day_id => days[4].id} ]
)

#  Melissa Nguyen
user = User.create(
  :email => "mnn008@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Melissa",
  :last_name => "Nguyen",
  :discussion_section_1 => 0,
  :discussion_section_2 => 1,
  :discussion_section_3 => 2,
  :preferred_teammates => "nacollin@ucsd.edu, phtsui@ucsd.edu"
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Monday", :schedule_id => schedule.id},
    {:name => "Wednesday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "morning", :day_id => days[0].id},
    {:chunk_of_time => "evening", :day_id => days[0].id},
    {:chunk_of_time => "morning", :day_id => days[1].id} ]
)

#  Tom Nguyen
user = User.create(
  :email => "tdn016@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Tom",
  :last_name => "Nguyen",
  :discussion_section_1 => 0,
  :discussion_section_2 => 1,
  :discussion_section_3 => 2,
  :preferred_teammates => ""
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Monday", :schedule_id => schedule.id},
    {:name => "Tuesday", :schedule_id => schedule.id},
    {:name => "Wednesday", :schedule_id => schedule.id},
    {:name => "Thursday", :schedule_id => schedule.id},
    {:name => "Friday", :schedule_id => schedule.id},
    {:name => "Sunday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "evening", :day_id => days[0].id},
    {:chunk_of_time => "evening", :day_id => days[1].id},
    {:chunk_of_time => "morning", :day_id => days[2].id},
    {:chunk_of_time => "evening", :day_id => days[2].id},
    {:chunk_of_time => "evening", :day_id => days[3].id},
    {:chunk_of_time => "morning", :day_id => days[4].id},
    {:chunk_of_time => "evening", :day_id => days[5].id} ]
)

#  Phillip Tsui
user = User.create(
  :email => "phtsui@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Phillip",
  :last_name => "Tsui",
  :discussion_section_1 => 0,
  :discussion_section_2 => 1,
  :discussion_section_3 => 2,
  :preferred_teammates => ""
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Monday", :schedule_id => schedule.id},
    {:name => "Tuesday", :schedule_id => schedule.id},
    {:name => "Wednesday", :schedule_id => schedule.id},
    {:name => "Thursday", :schedule_id => schedule.id},
    {:name => "Friday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "evening", :day_id => days[0].id},
    {:chunk_of_time => "afternoon", :day_id => days[1].id},
    {:chunk_of_time => "evening", :day_id => days[1].id},
    {:chunk_of_time => "morning", :day_id => days[2].id},
    {:chunk_of_time => "evening", :day_id => days[2].id},
    {:chunk_of_time => "afternoon", :day_id => days[3].id},
    {:chunk_of_time => "evening", :day_id => days[3].id},
    {:chunk_of_time => "morning", :day_id => days[4].id} ]
)

#  Yimai Fang
user = User.create(
  :email => "y6fang@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Yimai",
  :last_name => "Fang",
  :discussion_section_1 => 2,
  :discussion_section_2 => 3,
  :discussion_section_3 => 1,
  :preferred_teammates => ""
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Monday", :schedule_id => schedule.id},
    {:name => "Wednesday", :schedule_id => schedule.id},
    {:name => "Friday", :schedule_id => schedule.id},
    {:name => "Saturday", :schedule_id => schedule.id},
    {:name => "Sunday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "afternoon", :day_id => days[0].id},
    {:chunk_of_time => "evening", :day_id => days[0].id},
    {:chunk_of_time => "afternoon", :day_id => days[1].id},
    {:chunk_of_time => "evening", :day_id => days[1].id},
    {:chunk_of_time => "evening", :day_id => days[2].id},
    {:chunk_of_time => "morning", :day_id => days[3].id},
    {:chunk_of_time => "afternoon", :day_id => days[3].id},
    {:chunk_of_time => "evening", :day_id => days[3].id},
    {:chunk_of_time => "morning", :day_id => days[4].id},
    {:chunk_of_time => "afternoon", :day_id => days[4].id},
    {:chunk_of_time => "evening", :day_id => days[4].id} ]
)

#  Benjamin Liu
user = User.create(
  :email => "bliu@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Benjamin",
  :last_name => "Liu",
  :discussion_section_1 => 2,
  :discussion_section_2 => 3,
  :discussion_section_3 => 1,
  :preferred_teammates => ""
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Tuesday", :schedule_id => schedule.id},
    {:name => "Wednesday", :schedule_id => schedule.id},
    {:name => "Thursday", :schedule_id => schedule.id},
    {:name => "Saturday", :schedule_id => schedule.id},
    {:name => "Sunday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "afternoon", :day_id => days[0].id},
    {:chunk_of_time => "afternoon", :day_id => days[1].id},
    {:chunk_of_time => "evening", :day_id => days[1].id},
    {:chunk_of_time => "afternoon", :day_id => days[2].id},
    {:chunk_of_time => "morning", :day_id => days[3].id},
    {:chunk_of_time => "afternoon", :day_id => days[3].id},
    {:chunk_of_time => "evening", :day_id => days[3].id},
    {:chunk_of_time => "morning", :day_id => days[4].id},
    {:chunk_of_time => "afternoon", :day_id => days[4].id},
    {:chunk_of_time => "evening", :day_id => days[4].id} ]
)

#  Tony Ma
user = User.create(
  :email => "t1ma@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Tony",
  :last_name => "Ma",
  :discussion_section_1 => 2,
  :discussion_section_2 => 3,
  :discussion_section_3 => 1,
  :preferred_teammates => ""
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Tuesday", :schedule_id => schedule.id},
    {:name => "Wednesday", :schedule_id => schedule.id},
    {:name => "Thursday", :schedule_id => schedule.id},
    {:name => "Saturday", :schedule_id => schedule.id},
    {:name => "Sunday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "morning", :day_id => days[0].id},
    {:chunk_of_time => "evening", :day_id => days[1].id},
    {:chunk_of_time => "evening", :day_id => days[2].id},
    {:chunk_of_time => "morning", :day_id => days[3].id},
    {:chunk_of_time => "afternoon", :day_id => days[3].id},
    {:chunk_of_time => "evening", :day_id => days[3].id},
    {:chunk_of_time => "morning", :day_id => days[4].id},
    {:chunk_of_time => "afternoon", :day_id => days[4].id},
    {:chunk_of_time => "evening", :day_id => days[4].id} ]
)

#  Jason Samarin
user = User.create(
  :email => "jsamarin@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Jason",
  :last_name => "Samarin",
  :discussion_section_1 => 2,
  :discussion_section_2 => 3,
  :discussion_section_3 => 1,
  :preferred_teammates => ""
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Monday", :schedule_id => schedule.id},
    {:name => "Tuesday", :schedule_id => schedule.id},
    {:name => "Wednesday", :schedule_id => schedule.id},
    {:name => "Thursday", :schedule_id => schedule.id},
    {:name => "Friday", :schedule_id => schedule.id},
    {:name => "Saturday", :schedule_id => schedule.id},
    {:name => "Sunday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "morning", :day_id => days[0].id},
    {:chunk_of_time => "afternoon", :day_id => days[1].id},
    {:chunk_of_time => "morning", :day_id => days[2].id},
    {:chunk_of_time => "evening", :day_id => days[2].id},
    {:chunk_of_time => "afternoon", :day_id => days[3].id},
    {:chunk_of_time => "morning", :day_id => days[4].id},
    {:chunk_of_time => "afternoon", :day_id => days[4].id},
    {:chunk_of_time => "evening", :day_id => days[4].id},
    {:chunk_of_time => "morning", :day_id => days[5].id},
    {:chunk_of_time => "afternoon", :day_id => days[5].id},
    {:chunk_of_time => "evening", :day_id => days[5].id},
    {:chunk_of_time => "morning", :day_id => days[6].id},
    {:chunk_of_time => "afternoon", :day_id => days[6].id},
    {:chunk_of_time => "evening", :day_id => days[6].id} ]
)

#  Janet Shih
user = User.create(
  :email => "j6shih@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Janet",
  :last_name => "Shih",
  :discussion_section_1 => 2,
  :discussion_section_2 => 3,
  :discussion_section_3 => 1,
  :preferred_teammates => ""
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Monday", :schedule_id => schedule.id},
    {:name => "Wednesday", :schedule_id => schedule.id},
    {:name => "Thursday", :schedule_id => schedule.id},
    {:name => "Friday", :schedule_id => schedule.id},
    {:name => "Saturday", :schedule_id => schedule.id},
    {:name => "Sunday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "evening", :day_id => days[0].id},
    {:chunk_of_time => "evening", :day_id => days[1].id},
    {:chunk_of_time => "afternoon", :day_id => days[2].id},
    {:chunk_of_time => "evening", :day_id => days[3].id},
    {:chunk_of_time => "morning", :day_id => days[4].id},
    {:chunk_of_time => "afternoon", :day_id => days[4].id},
    {:chunk_of_time => "evening", :day_id => days[4].id},
    {:chunk_of_time => "morning", :day_id => days[5].id},
    {:chunk_of_time => "afternoon", :day_id => days[5].id},
    {:chunk_of_time => "evening", :day_id => days[5].id} ]
)

#  Zhen Xiao
user = User.create(
  :email => "zxiao@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Zhen",
  :last_name => "Xiao",
  :discussion_section_1 => 2,
  :discussion_section_2 => 3,
  :discussion_section_3 => 1,
  :preferred_teammates => ""
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Tuesday", :schedule_id => schedule.id},
    {:name => "Wednesday", :schedule_id => schedule.id},
    {:name => "Thursday", :schedule_id => schedule.id},
    {:name => "Saturday", :schedule_id => schedule.id},
    {:name => "Sunday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "morning", :day_id => days[0].id},
    {:chunk_of_time => "evening", :day_id => days[1].id},
    {:chunk_of_time => "morning", :day_id => days[2].id},
    {:chunk_of_time => "afternoon", :day_id => days[2].id},
    {:chunk_of_time => "evening", :day_id => days[2].id},
    {:chunk_of_time => "morning", :day_id => days[3].id},
    {:chunk_of_time => "afternoon", :day_id => days[3].id},
    {:chunk_of_time => "evening", :day_id => days[3].id},
    {:chunk_of_time => "morning", :day_id => days[4].id},
    {:chunk_of_time => "afternoon", :day_id => days[4].id},
    {:chunk_of_time => "evening", :day_id => days[4].id} ]
)

#  Elena Grigore
user = User.create(
  :email => "egrigore@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Elena",
  :last_name => "Grigore",
  :discussion_section_1 => 2,
  :discussion_section_2 => 3,
  :discussion_section_3 => 1,
  :preferred_teammates => "sshaginy@ucsd.edu, k2fung@ucsd.edu"
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Monday", :schedule_id => schedule.id},
    {:name => "Tuesday", :schedule_id => schedule.id},
    {:name => "Thursday", :schedule_id => schedule.id},
    {:name => "Friday", :schedule_id => schedule.id},
    {:name => "Saturday", :schedule_id => schedule.id},
    {:name => "Sunday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "afternoon", :day_id => days[0].id},
    {:chunk_of_time => "afternoon", :day_id => days[1].id},
    {:chunk_of_time => "evening", :day_id => days[1].id},
    {:chunk_of_time => "afternoon", :day_id => days[2].id},
    {:chunk_of_time => "evening", :day_id => days[2].id},
    {:chunk_of_time => "afternoon", :day_id => days[3].id},
    {:chunk_of_time => "evening", :day_id => days[3].id},
    {:chunk_of_time => "afternoon", :day_id => days[4].id},
    {:chunk_of_time => "afternoon", :day_id => days[5].id} ]
)

#  Tong Liang
user = User.create(
  :email => "t1liang@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Tong",
  :last_name => "Liang",
  :discussion_section_1 => 2,
  :discussion_section_2 => 3,
  :discussion_section_3 => 1,
  :preferred_teammates => "k2fung@ucsd.edu"
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Tuesday", :schedule_id => schedule.id},
    {:name => "Thursday", :schedule_id => schedule.id},
    {:name => "Friday", :schedule_id => schedule.id},
    {:name => "Saturday", :schedule_id => schedule.id},
    {:name => "Sunday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "evening", :day_id => days[0].id},
    {:chunk_of_time => "evening", :day_id => days[1].id},
    {:chunk_of_time => "afternoon", :day_id => days[2].id},
    {:chunk_of_time => "evening", :day_id => days[2].id},
    {:chunk_of_time => "afternoon", :day_id => days[3].id},
    {:chunk_of_time => "afternoon", :day_id => days[4].id} ]
)

#  Steven Shaginyan
user = User.create(
  :email => "sshaginy@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Steven",
  :last_name => "Shaginyan",
  :discussion_section_1 => 2,
  :discussion_section_2 => 3,
  :discussion_section_3 => 1,
  :preferred_teammates => "egrigore@ucsd.edu"
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Tuesday", :schedule_id => schedule.id},
    {:name => "Thursday", :schedule_id => schedule.id},
    {:name => "Friday", :schedule_id => schedule.id},
    {:name => "Saturday", :schedule_id => schedule.id},
    {:name => "Sunday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "evening", :day_id => days[0].id},
    {:chunk_of_time => "morning", :day_id => days[1].id},
    {:chunk_of_time => "afternoon", :day_id => days[1].id},
    {:chunk_of_time => "evening", :day_id => days[1].id},
    {:chunk_of_time => "afternoon", :day_id => days[2].id},
    {:chunk_of_time => "evening", :day_id => days[2].id},
    {:chunk_of_time => "morning", :day_id => days[3].id},
    {:chunk_of_time => "afternoon", :day_id => days[3].id},
    {:chunk_of_time => "morning", :day_id => days[4].id},
    {:chunk_of_time => "afternoon", :day_id => days[4].id} ]
)

#  Ryan Weald
user = User.create(
  :email => "rweald@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Ryan",
  :last_name => "Weald",
  :discussion_section_1 => 2,
  :discussion_section_2 => 3,
  :discussion_section_3 => 1,
  :preferred_teammates => ""
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Monday", :schedule_id => schedule.id},
    {:name => "Tuesday", :schedule_id => schedule.id},
    {:name => "Wednesday", :schedule_id => schedule.id},
    {:name => "Thursday", :schedule_id => schedule.id},
    {:name => "Friday", :schedule_id => schedule.id},
    {:name => "Saturday", :schedule_id => schedule.id},
    {:name => "Sunday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "morning", :day_id => days[0].id},
    {:chunk_of_time => "afternoon", :day_id => days[0].id},
    {:chunk_of_time => "evening", :day_id => days[1].id},
    {:chunk_of_time => "morning", :day_id => days[2].id},
    {:chunk_of_time => "afternoon", :day_id => days[2].id},
    {:chunk_of_time => "evening", :day_id => days[3].id},
    {:chunk_of_time => "morning", :day_id => days[4].id},
    {:chunk_of_time => "afternoon", :day_id => days[4].id},
    {:chunk_of_time => "evening", :day_id => days[4].id},
    {:chunk_of_time => "afternoon", :day_id => days[5].id},
    {:chunk_of_time => "afternoon", :day_id => days[6].id} ]
)

#  Kevin Fung
user = User.create(
  :email => "k2fung@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Kevin",
  :last_name => "Fung",
  :discussion_section_1 => 2,
  :discussion_section_2 => 3,
  :discussion_section_3 => 1,
  :preferred_teammates => ""
)

#  Shady Botros
user = User.create(
  :email => "sbotros@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Shady",
  :last_name => "Botros",
  :discussion_section_1 => 0,
  :discussion_section_2 => 2,
  :discussion_section_3 => 1,
  :preferred_teammates => ""
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Monday", :schedule_id => schedule.id},
    {:name => "Wednesday", :schedule_id => schedule.id},
    {:name => "Saturday", :schedule_id => schedule.id},
    {:name => "Sunday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "evening", :day_id => days[0].id},
    {:chunk_of_time => "morning", :day_id => days[1].id},
    {:chunk_of_time => "evening", :day_id => days[1].id},
    {:chunk_of_time => "afternoon", :day_id => days[2].id},
    {:chunk_of_time => "morning", :day_id => days[3].id},
    {:chunk_of_time => "afternoon", :day_id => days[3].id},
    {:chunk_of_time => "evening", :day_id => days[3].id} ]
)

#  Joseph Lee
user = User.create(
  :email => "jhl050@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Joseph",
  :last_name => "Lee",
  :discussion_section_1 => 0,
  :discussion_section_2 => 2,
  :discussion_section_3 => 1,
  :preferred_teammates => "jyick@ucsd.edu"
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Monday", :schedule_id => schedule.id},
    {:name => "Tuesday", :schedule_id => schedule.id},
    {:name => "Wednesday", :schedule_id => schedule.id},
    {:name => "Thursday", :schedule_id => schedule.id},
    {:name => "Friday", :schedule_id => schedule.id},
    {:name => "Saturday", :schedule_id => schedule.id},
    {:name => "Sunday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "morning", :day_id => days[0].id},
    {:chunk_of_time => "evening", :day_id => days[0].id},
    {:chunk_of_time => "morning", :day_id => days[1].id},
    {:chunk_of_time => "morning", :day_id => days[2].id},
    {:chunk_of_time => "evening", :day_id => days[2].id},
    {:chunk_of_time => "morning", :day_id => days[3].id},
    {:chunk_of_time => "morning", :day_id => days[4].id},
    {:chunk_of_time => "afternoon", :day_id => days[5].id},
    {:chunk_of_time => "morning", :day_id => days[6].id},
    {:chunk_of_time => "afternoon", :day_id => days[6].id},
    {:chunk_of_time => "evening", :day_id => days[6].id} ]
)

#  Aaron Schwartz
user = User.create(
  :email => "atschwar@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Aaron",
  :last_name => "Schwartz",
  :discussion_section_1 => 0,
  :discussion_section_2 => 2,
  :discussion_section_3 => 1,
  :preferred_teammates => ""
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Monday", :schedule_id => schedule.id},
    {:name => "Tuesday", :schedule_id => schedule.id},
    {:name => "Wednesday", :schedule_id => schedule.id},
    {:name => "Thursday", :schedule_id => schedule.id},
    {:name => "Friday", :schedule_id => schedule.id},
    {:name => "Saturday", :schedule_id => schedule.id},
    {:name => "Sunday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "afternoon", :day_id => days[0].id},
    {:chunk_of_time => "morning", :day_id => days[1].id},
    {:chunk_of_time => "morning", :day_id => days[2].id},
    {:chunk_of_time => "afternoon", :day_id => days[2].id},
    {:chunk_of_time => "morning", :day_id => days[3].id},
    {:chunk_of_time => "morning", :day_id => days[4].id},
    {:chunk_of_time => "afternoon", :day_id => days[5].id},
    {:chunk_of_time => "morning", :day_id => days[6].id},
    {:chunk_of_time => "afternoon", :day_id => days[6].id},
    {:chunk_of_time => "evening", :day_id => days[6].id} ]
)

#  Jessica Yick
user = User.create(
  :email => "jyick@ucsd.edu",
  :password => "666666",
  :password_confirmation => "666666",
  :first_name => "Jessica",
  :last_name => "Yick",
  :discussion_section_1 => 0,
  :discussion_section_2 => 2,
  :discussion_section_3 => 1,
  :preferred_teammates => "jhl050@ucsd.edu"
)
schedule = Schedule.create(
  :user_id => user.id
)
days = Day.create(
  [ {:name => "Monday", :schedule_id => schedule.id},
    {:name => "Tuesday", :schedule_id => schedule.id},
    {:name => "Wednesday", :schedule_id => schedule.id},
    {:name => "Friday", :schedule_id => schedule.id},
    {:name => "Saturday", :schedule_id => schedule.id},
    {:name => "Sunday", :schedule_id => schedule.id} ]
)
TimeBlock.create(
  [ {:chunk_of_time => "morning", :day_id => days[0].id},
    {:chunk_of_time => "evening", :day_id => days[1].id},
    {:chunk_of_time => "morning", :day_id => days[2].id},
    {:chunk_of_time => "afternoon", :day_id => days[3].id},
    {:chunk_of_time => "evening", :day_id => days[3].id},
    {:chunk_of_time => "morning", :day_id => days[4].id},
    {:chunk_of_time => "afternoon", :day_id => days[4].id},
    {:chunk_of_time => "evening", :day_id => days[4].id},
    {:chunk_of_time => "morning", :day_id => days[5].id},
    {:chunk_of_time => "afternoon", :day_id => days[5].id},
    {:chunk_of_time => "evening", :day_id => days[5].id} ]
)
