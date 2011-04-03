class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new #guest user
    # can :signup_wizard, Registration
  
    if !user.email.blank?
      # can :home, Page
      # can :update, Registration
      can :signup_wizard, @registration
      
      # can :create, TimeBlock
      # can :update, TimeBlock
      # can :create, Session
      # can :destroy, Session
    else
      can :create, @registration
      # can :read, @registration
      # can :update, @registration
      # can :read, @confirmation
      # can :create, Session
      # can :destroy, Session
    end
  end
end
