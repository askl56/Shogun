require 'faker'

module Shogun
  FactoryGirl.define do
    factory :user, class: 'Shogun/User' do |f|
      f.email { Faker::Internet.email }
      password 'password'
      password_confirmation 'password'
      admin false
    end

    factory :admin, parent: :user do |_f|
      admin true
    end
  end
end
