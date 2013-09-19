# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :show do
    comedy_club_id 1
    association :comedy_club
    start_time "2013-09-11 16:26:12"
    end_time "2013-09-11 16:26:12"
    title "MyString"
  end
end
