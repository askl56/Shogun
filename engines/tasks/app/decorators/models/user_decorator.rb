Shogun::User.class_eval do
  has_many :tasks, class_name: Shogun::Tasks::Task
end
