require 'cancan'

module Shogun
  module Contacts
    class AbilityDecorator
      include CanCan::Ability

      def initialize(user)
        unless user.admin?
          can :manage, Shogun::Contacts::Contact, user_id: user.id
        end
      end
    end
  end
end

Shogun::Ability.register_ability(Shogun::Contacts::AbilityDecorator)
