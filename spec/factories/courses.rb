FactoryGirl.define do
  factory :course do
    sequence :name do |n|
      "Course #{n}"
    end
    extra "With Extras"
    sequence :start do |n|
      Time.now - 2.weeks + (n*2).weeks
    end 
  end
end
