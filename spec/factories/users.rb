FactoryGirl.define do
  factory :user do
    confirmed_at Time.now
    name "Test User"
    email "test@example.com"
    password "please123"

    street "WhereIlive 111"
    city "CityOfTesters"
    country "WhereIam"
    
    trait :admin do
      role 'admin'
    end

  end
end
