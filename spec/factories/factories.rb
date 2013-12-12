require 'factory_girl'

FactoryGirl.define do

  factory :user do |u|
    sequence(:email) { |i| "user_#{i}@example1.com"}
    u.password               "draft1"
    u.password_confirmation  "draft1"
    u.admin                   false
  end

  factory :admin, class: User do |u|
    u.email                  "admin@admin.com"
    u.password               "admin123"
    u.password_confirmation  "admin123"
    admin                    true
  end
end
