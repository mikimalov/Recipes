FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "testing#{n}@test.com"}
    full_name {'Miki Malov'}
    first_name {'Miki'}
    last_name {'Malov'}
    password {'mikimiki'}
    password_confirmation {'mikimiki'}
  end
end