# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    user_id 1
    meal_id 1
    date "2013-05-11"
  end
end
