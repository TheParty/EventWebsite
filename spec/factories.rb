FactoryGirl.define do
  factory :user do
    username "Emily Owens"
    email "emily@fake.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
