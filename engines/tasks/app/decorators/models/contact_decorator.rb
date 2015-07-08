if Shogun::Core.available?(:contacts)
  Shogun::Contacts::Contact.class_eval do
    has_many :tasks, class_name: Shogun::Tasks::Task
  end
end
