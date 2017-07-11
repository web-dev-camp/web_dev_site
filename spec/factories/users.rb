  FactoryGirl.define do
  factory :user do
    confirmed_at Time.now
    name "Test User"
    sequence( :email) { |n| "user#{n}@test.com" }
    password "please123"

    street "WhereIlive 111"
    city "CityOfTesters"
    country "WhereIam"

    factory :admin do
      sequence( :email) { |n| "admin#{n}@test.com" }
      role :admin
    end
  end
end
