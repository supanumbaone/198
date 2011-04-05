class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new  # guest user
    
    if user.admin
      can :manage, :all
    end
  
    if !user.email.blank?
      can :read, @registration
      can :update, @registration
      can :signup_wizard, @registration
          
      can :create, Membership
      can :update, Membership
      
      can :create, Schedule
      can :update, Schedule
      
      can :create, Day
      can :update, Day
      
      can :create, TimeBlock
      can :update, TimeBlock
    else
      can :create, @registration
    end
  end
end
