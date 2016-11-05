require 'rails_helper'

RSpec.describe Course, type: :model do

  it "has a working factory" do
    course = build :course
    expect(course.save).to eq true
  end
end
