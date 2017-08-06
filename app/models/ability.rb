class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    else
      can :manage, User, id: user.id
      can :read, Product
      can [:create, :read], Comment
    end
  end
end
