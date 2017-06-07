FactoryGirl.define do
  factory :course do
    sequence :name do |n|
      "Course #{n}"
    end
    extra "With Extras"
    sequence :start do |n|
      Time.now  + (n*2).weeks
    end
    factory :past_course do
      start Time.now - 3.weeks
    end
  end
end
