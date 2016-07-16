class Ability
  include CanCan::Ability

  def initialize(admin_user)
    can :read, ActiveAdmin::Page, name: 'Dashboard'

    if admin_user.super_admin?
      can :manage, AdminUser
      can :manage, Company
      can :manage, RestaurantCategory
      can :manage, DishCategory
    else
      can :manage, Department
      can :manage, User
    end
  end
end
