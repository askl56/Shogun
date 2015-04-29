Shogun::User.class_eval do
  has_many :contacts, class_name: Shogun::Contacts::Contact
end
