# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(employee)
    can :manage, :session
    employee ||= Employee.new
    if employee.news_posting_auth?
      can :manage, :all
    else
      can :read, Article
    end
  end
end
