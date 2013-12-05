FactoryGirl.define do
  factory :location do
    organization
    name { random_string }
    address { random_string }
    city { random_city }
    zipcode { random_digits 5 }
    phone { random_digits 10 }
    fax { random_digits 10 }
    email { random_email }
    hours 'MyText'
    directions 'MyText'
    wheelchair_accessible { random_boolean }
    bart_accessible { random_boolean }
    muni_bus_accessible { random_boolean }
    muni_train_accessible { random_boolean }
    ac_bus_accessible { random_boolean }
    free_parking { random_boolean }
    parking_meters { random_boolean }
    paid_parking_lot { random_boolean }
    free_street_parking { random_boolean }
    public_transportation_stop { random_string }
    parking_fees { random_string }
  end
end
