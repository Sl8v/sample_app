FactoryGirl.define do
  factory :user do
    name     "Micha Hartl"
    email    "michael@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end