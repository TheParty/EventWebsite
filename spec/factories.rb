FactoryGirl.define do
  
  factory :user do
    sequence(:username)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"
    
    factory :admin do
      admin true
    end
    
  end
  
  factory :micropost do
    content "Lorem ipsum"
    user
  end
  
  factory :event do
    sequence(:name) { |n| "Event #{n}"}
    location "Boulder, CO"
    time "12pm"
    description "TEST DESCRIPTION"
    user
  end
  
end
