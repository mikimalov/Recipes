FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "mikimalov#{n}@gmail.com"}
    full_name {'Miki Malov'}
    first_name {'Miki'}
    last_name {'Malov'}
    password {'mikimiki'}
    password_confirmation {'mikimiki'}
  end
end