FactoryGirl.define do
  factory :location do
    organization
    name  "Location 1" 
    address  "111 Main St"
    city  "San Francisco" 
    zipcode  '94107' 
    phone  '415-298-0900'
    fax  '415-298-0800' 
    email  'random_email@location1.com'
    hours '9am-5pm'
    directions 'Off ramp, turn right, stop'
    wheelchair_accessible  true
    bart_accessible  false 
    muni_bus_accessible  false 
    muni_train_accessible  true
    ac_bus_accessible  true 
    free_parking  true 
    parking_meters  true 
    paid_parking_lot  false 
    free_street_parking  true 
    public_transportation_stop  "5th and O'Farrell"
    parking_fees  "Free"
  end
end
