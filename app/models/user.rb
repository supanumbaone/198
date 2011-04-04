class User < ActiveRecord::Base
  has_one :schedule, :dependent => :destroy
  has_many :memberships, :dependent => :destroy
  has_many :groups, :through => :memberships
  has_many :comments, :dependent => :destroy
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  
  # Alias for <tt>acts_as_taggable_on :tags</tt>: <tt>acts_as_taggable</tt>  
  acts_as_taggable_on :interests
  
  mount_uploader :profile_image, ProfileImageUploader

  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, 
                  :birthday, :about, :location, :school, :occupation, :aim, :live, :skype, 
                  :gtalk, :phone, :hide_email, :hide_phone, :hide_ims, :birthday_privacy, :signup_status,
                  :interest_list, :profile_image, :personal_information_added, :discussion_section_1,
                  :discussion_section_2, :discussion_section_3, :preferred_teammates, :html, :css, :javascript, :java, :cpp, :python, :ruby_ror, :other, :sql
  
  # Keeps track of the signup step
  attr_accessor :current_step
                  
  # validates_presence_of :profile_image, :interest_list, :first_name, :last_name, :location,
                        # :if => lambda { |user| user.current_step == 'information_step' } 
  validates_length_of :first_name, :within => 2..30, :too_long => "must be at most 30 characters", :too_short => "must be at least 2 characters",
                      :if => lambda { |user| user.current_step == 'information_step' }
  validates_length_of :last_name, :within => 2..30, :too_long => "must be at most 30 characters", :too_short => "must be at least 2 characters",
                      :if => lambda { |user| user.current_step == 'information_step' }
  # validates_inclusion_of :birthday,
      # :in => Date.new(1900)..Time.now.years_ago(13).to_date,
      # :message => "- you've gotta be at least 13 to sign up. /sadface",
      # :if => lambda { |user| user.current_step == 'information_step' }
  # validates_size_of :profile_image, :maximum => 5.megabytes, :if => lambda { |user| user.current_step == 'information_step' }
  
  # Check out app/validators/email_format_validator.rb
  validates :email, :email_format => true
  
  # Overwriting Devise's update_with_password
  def update_with_password(params={})
    if params[:password].blank? 
      params.delete(:password) 
      params.delete(:password_confirmation) if params[:password_confirmation].blank? 
    end 
    update_attributes(params) 
  end
  
  # Does the user already have a schedule?
  def has_schedule?
    self.schedule != nil
  end
  
  # Given a schedule, create days with dates
  # Where a chunk_of_time is "morning" | "afternoon" | "evening"
  def add_date_chunks_to_schedule(time_blocks, schedule)
    time_blocks.each do |block|
      date = block.split("_")[0]
      chunk_of_time = block.split("_")[1]
      
      if Day.exists?(date, schedule.id)
        day = Day.where(:date => date, :schedule_id => schedule.id).first
      else
        day = Day.new(:date => date, :schedule_id => schedule.id)
        day.save
      end
      
      if !TimeBlock.dexists?(chunk_of_time, day.id)
        time_block = TimeBlock.new(:chunk_of_time => chunk_of_time, :day_id => day.id)
        time_block.save
      end
    end
  end
  
  # Given a schedule, create days with names
  # Where a chunk_of_time is "morning" | "afternoon" | "evening"
  def add_day_chunks_to_schedule(time_blocks, schedule)
    time_blocks.each do |block|
      day_of_week = block.split("_")[0]
      chunk_of_time = block.split("_")[1]
      
      if Day.exists?(day_of_week, schedule.id)
        day = Day.where(:name => day_of_week, :schedule_id => schedule.id).first
      else
        day = Day.new(:name => day_of_week, :schedule_id => schedule.id)
        day.save
      end
      
      if !TimeBlock.dexists?(chunk_of_time, day.id)
        time_block = TimeBlock.new(:chunk_of_time => chunk_of_time, :day_id => day.id)
        time_block.save
      end
    end
  end
  
  # Given a schedule, create days and block of time associated with this schedule
  # Where a block consists of a :start_time and :end_time
  def add_blocks_to_schedule(time_blocks, schedule, recurring)
    time_blocks.each do |block|
      day_of_week = block.split("_")[0]
      time = block.split("_")[1]
      start_time = Time.utc("2011", nil, nil, time.split(" - ")[0])
      end_time = Time.utc("2011", nil, nil, time.split(" - ")[1])
      
      if Day.exists?(day_of_week, schedule.id)
        day = Day.where(:name => day_of_week, :schedule_id => schedule.id).first
      else
        day = Day.new(:name => day_of_week, :schedule_id => schedule.id)
        day.save
      end
      
      if !TimeBlock.exists?(start_time, end_time, day.id, recurring)
        time_block = TimeBlock.new(:start_time => start_time, :end_time => end_time, :day_id => day.id, :recurring => recurring)
        time_block.save
      end
    end
  end
  
  def self.export_object
    users = User.all
    users_to_be_exported = []
    
    users.each do |user|
      temp = "#{user.email},#{user.discussion_section_1},#{user.discussion_section_2},#{user.discussion_section_3}:#{user.preferred_teammates}:".gsub(/\s/,"")
      if user.schedule
        user.schedule.days.each do |day|
          day.time_blocks.each do |block|
            temp += "#{numeric_day(day.name)} #{numeric_block(block.chunk_of_time)},"
          end
        end
      end
      temp = temp[0..(temp.length-2)] if temp[temp.length-1] == ","
      users_to_be_exported << temp
    end
    
    users_to_be_exported
  end
  
  def self.numeric_day(day)
    if day == "Monday"
      return 0
    elsif day == "Tuesday"
      return 1
    elsif day == "Wednesday"
      return 2
    elsif day == "Thursday"
      return 3
    elsif day == "Friday"
      return 4
    elsif day == "Saturday"
      return 5
    elsif day == "Sunday"
      return 6
    end
  end
  
  def self.numeric_block(block)
    if block == "morning"
      return 0
    elsif block == "afternoon"
      return 1
    elsif block == "evening"
      return 2
    end
  end
  
  
  #input a string of newlined, roster from excel
  #call this function and it returns the roster with just emails
  def self.get_class_roster
    roster_string = "Almada, Elioth Arturo	ealmada@ucsd.edu
    An, Hyeong Min	hman@ucsd.edu
    Angelo, Radley Edwin	rangelo@ucsd.edu
    Arasteh, Aria Andrew	aarasteh@ucsd.edu
    Asuncion, Nathaniel Charles	nasuncio@ucsd.edu
    Azares, Kerwin Almer Manalang	kazares@ucsd.edu
    Barrientos, Janet	jabarrie@ucsd.edu
    Borger, Matthew Christopher	mborger@ucsd.edu
    Budiman, Andrew Desmond	adbudima@ucsd.edu
    Bundalian, Alvin Carino	abundali@ucsd.edu
    Caasi, Kevin Castanar	kcaasi@ucsd.edu
    Callaway, Jackson Paul	jcallawa@ucsd.edu
    Castillo, Lance Salvador	lscastil@ucsd.edu
    Castro, Richard S	rscastro@ucsd.edu
    Chan, Jacky L	j5chan@ucsd.edu
    Chang, Christopher Chen-kung	c2chang@ucsd.edu
    Chang, Chuan Yi	cyc025@ucsd.edu
    Chang, Yuja	yuc026@ucsd.edu
    Choi, Hosoo Christopher	hcchoi@ucsd.edu
    Chon, Kevin Kyong Jin	kkchon@ucsd.edu
    Chow, Arick Y	aychow@ucsd.edu
    Chu, Matthew Kay Yeh	mkchu@ucsd.edu
    Chuang, Michael	m1chuang@ucsd.edu
    Chung, Eric Yanhon	e5chung@ucsd.edu
    Cisneros, Neyva	ncisnero@ucsd.edu
    Cross, Crystal Tu	ctcross@ucsd.edu
    Cui, Jonathan Hoizen	jhcui@ucsd.edu
    Dang, Anthony	a6dang@ucsd.edu
    Davidsohn, Solomon	sdavidso@ucsd.edu
    Do, Sally Cheng	s2do@ucsd.edu
    Dorai, Aravindh Dilli	adorai@ucsd.edu
    Duong, Brian Huynh	b1duong@ucsd.edu
    Espino, Freddy	fespino@ucsd.edu
    Gaeta, Maria De La Luz	mgaeta@ucsd.edu
    Gallegos, Erik	ergalleg@ucsd.edu
    Guan, Patrick	pguan@ucsd.edu
    He, Kevin	kehe@ucsd.edu
    Heisey, Nathan Alexander	nheisey@ucsd.edu
    Hii, Michael Sieng Lung	mhii@ucsd.edu
    Hill, Austin Coleman	a2hill@ucsd.edu
    Hodgkins, Tyler David	thodgkin@ucsd.edu
    Hoffman, Thomas Dan	thoffman@ucsd.edu
    Holloway, William Jordan	wjhollow@ucsd.edu
    Ing, David Alexander	ding@ucsd.edu
    Jauregui, Joel	jjauregu@ucsd.edu
    Kalra, Mahir Singh	mskalra@ucsd.edu
    Kim, Jung	juk018@ucsd.edu
    Kimura, Kayla Marie	kmkimura@ucsd.edu
    Kou, Bryant Jonathan	bkou@ucsd.edu
    Lam, Dao Dinh	d2lam@ucsd.edu
    Lapidario, Kelvin Gernato	klapidar@ucsd.edu
    Lau Fang, Kevin Estuardo	klaufang@ucsd.edu
    Lau, Nicholas Matthew	nmlau@ucsd.edu
    Law, Kenneth Yuet Kun	klaw@ucsd.edu
    Le, Quan Minh	qmle@ucsd.edu
    Lee, Byung Joon	bjl007@ucsd.edu
    Lee, Kwan Chul	kcl007@ucsd.edu
    Lee, Sangjoon	sal009@ucsd.edu
    Leung, Christopher Hong	c4leung@ucsd.edu
    Lim, Ernest	erlim@ucsd.edu
    Lim, Sandy	salim@ucsd.edu
    Lin, Henry	helin@ucsd.edu
    Malani, Suman	smalani@ucsd.edu
    Masehi-Lano, Jonathan	jmasehil@ucsd.edu
    McGuire, Ashley	amcguire@ucsd.edu
    McMillen, Derrick Joseph	dmcmille@ucsd.edu
    Miller, Lewis Brandon Douglas	lbmiller@ucsd.edu
    Moncivais, Haronid Miller	hmonciva@ucsd.edu
    Muinos, Andrew Joseph	amuinos@ucsd.edu
    Nevarez, Rafael Jose	rnevarez@ucsd.edu
    Newman, James Cecil	jcnewman@ucsd.edu
    Ng, Andrew Cheuk-Wai	acng@ucsd.edu
    Nguyen, Dorothy Phuong Khang	dpn003@ucsd.edu
    Nguyen, Quynh	qun003@ucsd.edu
    Nguyen, Thinh Huu	thn024@ucsd.edu
    Nogales, Jonathan Ryan	jnogales@ucsd.edu
    Ochiai, Kazuhito	kaochiai@ucsd.edu
    Olaranont, Matthew	molarano@ucsd.edu
    Paysan, Miguel Vicente	mpaysan@ucsd.edu
    Peterson, Alexander Beckett	abpeters@ucsd.edu
    Pinkerton, Kristina Lynn	kpinkert@ucsd.edu
    Ponce, Gabriela	gaponce@ucsd.edu
    Punn, Ambuj	apunn@ucsd.edu
    Qin, Cong	coqin@ucsd.edu
    Rabinowitz, Jake Benjamin	jrabinow@ucsd.edu
    Radousky, Oren Michael	oradousk@ucsd.edu
    Schmidl, Scott Anthony	sschmidl@ucsd.edu
    Selander, Kurt Bradley	kselande@ucsd.edu
    Sendar, Jordan Isaac	jsendar@ucsd.edu
    Shah, Parima Ajay	pashah@ucsd.edu
    Shen, Andrew Yeen	ayshen@ucsd.edu
    Shin, Jae W	jws001@ucsd.edu
    Shitanishi, Justin Robert	jshitani@ucsd.edu
    Shu, Bowen	boshu@ucsd.edu
    Sin, Melvin U Fai	msin@ucsd.edu
    Sok, Kiley Hyun	shsok@ucsd.edu
    Sono, Masaki Brian	msono@ucsd.edu
    Sorokina, Olga	osorokin@ucsd.edu
    Sun, Carla Emile	cesun@ucsd.edu
    Ta, Minh Q	mqta@ucsd.edu
    Taberner, Michael Francis	mtaberne@ucsd.edu
    Tanaka, Sheldon Ryan	srtanaka@ucsd.edu
    Tao, Edwin	etao@ucsd.edu
    Tao, Feiran	ftao@ucsd.edu
    Tian, Shen	stian@ucsd.edu
    Tran, Thanh Thao	ttt031@ucsd.edu
    Truong, Brian Nhu	bntruong@ucsd.edu
    Tsai, Yun-Tsang	y3tsai@ucsd.edu
    Valles, Daniel Isaac	dvalles@ucsd.edu
    Vazquez, Victor M	vmvazque@ucsd.edu
    Vivio, John Joseph	jvivio@ucsd.edu
    Walker, Evan Keith	ekwalker@ucsd.edu
    Wang, Gary	g5wang@ucsd.edu
    Wang, Pengyu	pew007@ucsd.edu
    Wang, Sheng	shw003@ucsd.edu
    Wong, Helen Min Kee	hmwong@ucsd.edu
    Wong, Samson Richard	srwong@ucsd.edu
    Yang, Chienming	chy006@ucsd.edu
    Yeh, Joyce	j6yeh@ucsd.edu
    Yip, Brian Casey	bcyip@ucsd.edu
    Yoo, David	dayoo@ucsd.edu
    Yoon, Jong Won	jwyoon@ucsd.edu
    Young, Benjamin Gee	byoung@ucsd.edu
    Zhang, Kevin W	k7zhang@ucsd.edu
    Zhou, Franklin Yuqing	fyzhou@ucsd.edu
    Arora, Tarin Something	tarora@ucsd.edu
    Colmenar, Al Something	acolmena@ucsd.edu
    Avery, Christopher Something	sirusto@gmail.com"    

    roster = Array.new
    roster = roster_string.split("\n")

    for student in roster
      email = student.split("\t").last
      student.replace(email)
    end
    
    roster = roster.sort
    return roster
  end
  
  #returns array of unregistered users from the full class roster
  #look at get_class_roster for more information
  def self.get_unregistered_users
    registered_emails = Array.new
    full_roster = get_class_roster
    users = User.all
    for u in users
      registered_emails << u.email
    end
    
    unregistered_emails = full_roster - registered_emails
    return unregistered_emails
  end
  
  
  require 'csv'
  def self.import_user_groupings
    file_name = "users.csv"
    import_path = "#{Rails.root}/public/imports/" + file_name
    users = User.all
    
    CSV.foreach(import_path) do |row|
      users.each do |user|
        if user.email == row[0]
          group = Group.where(:name => row[1]).first
          if !group
            group = Group.new(:name => row[1])
            group.save
          end
          membership = Membership.new(:group_id => group.id, :user_id => user.id)
          membership.save
        end
      end
    end
  end
end
