FactoryGirl.define do
  factory :apply do
    primary_choice_course {create :course}
    comment "Some Comment"
    sent "2016-05-17"
    plan "Flex"
    user 
  end
end
