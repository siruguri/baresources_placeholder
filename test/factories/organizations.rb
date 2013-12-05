FactoryGirl.define do
  factory :organization do
    name { random_string }
    address { random_address }
  end
end
