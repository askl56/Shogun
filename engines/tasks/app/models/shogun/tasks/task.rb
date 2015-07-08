module Shogun::Tasks
  class Task < ActiveRecord::Base
    belongs_to :user

    if Shogun::Core.available?(:contacts)
      belongs_to :contact, class_name: 'Shogun::Contacts::Contact'
    end
  end
end
