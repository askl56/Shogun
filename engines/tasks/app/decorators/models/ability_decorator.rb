require 'cancan'

module Shogun
  module Tasks
    class AbilityDecorator
      include CanCan::Ability

      def initialize(user)
        can :manage, Shogun::Tasks::Task, user_id: user.id unless user.admin?
      end
    end
  end
end

# Registers the defined abilities.
Shogun::Ability.register_ability(Shogun::Tasks::AbilityDecorator)
