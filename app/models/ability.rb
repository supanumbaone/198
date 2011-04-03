class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new #guest user
    
    if user
      can :home, Page
      can :update, Registration
      can :signup_wizard, Registration
      
      can :create, TimeBlock
      can :update, TimeBlock
      
      
    else  
      can :home, Page
      can :create, Registration
    end
  end
end
