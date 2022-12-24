# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    cannot :read, :all
    can :create, :all
    can :destroy, :all, user_id: user_id 
    return unless user.present?
  end
end
