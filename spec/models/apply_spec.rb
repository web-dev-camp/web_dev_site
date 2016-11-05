require 'rails_helper'

RSpec.describe Apply, type: :model do

  it "has a factory" do
    apply = build(:apply)
    expect(apply.save).to be true
  end

  it "validates the course correctly" do
    apply = build(:apply , primary_choice_course_id: nil)
    expect(apply.save).to be false
  end
end
