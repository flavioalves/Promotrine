FactoryGirl.define do
  factory :user do
    name     "Test User"
    email    "test@foo.com"
    password "foobar"
    password_confirmation "foobar"
  end
end