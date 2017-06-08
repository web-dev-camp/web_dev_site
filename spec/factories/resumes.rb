FactoryGirl.define do
  factory :resume do
    user
    factory :filled_resume do
      school "Yes"
      uni "Started, didnt finish"
      internship "Some really weird stuff"
      work "Nothing related, but a lot of it"
      projects "Small and big in the past"
      soft_skills "Taliking, yes, and not talking also"
      tech_skills "All kinds of hardware"
      interests "Bit of drumming"
      motivation "I really want to go"
      finance "I got money"
      other "Some final words"

      user
    end
  end
end
