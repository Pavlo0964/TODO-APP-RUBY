class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.user_role ==  'admin'
      can :manage, :all
    end
    can :manage, Task do |task|
      task.user == user
    end

  end
end
