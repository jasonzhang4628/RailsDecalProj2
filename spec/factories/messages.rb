# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    sender 1
    recipient 1
    message "MyString"
  end
end
