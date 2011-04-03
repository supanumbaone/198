class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new  # guest user
  
    if !user.email.blank?
      can :signup_wizard, @registration
      can :edit, @registration
      can :update, @registration
    else
      can :create, @registration
    end
  end
end
