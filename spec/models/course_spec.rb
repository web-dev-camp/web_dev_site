require 'rails_helper'

RSpec.describe Course, type: :model do

  it "has a working factory" do
    course = build :course
    expect(course.save).to eq true
  end

  it "names course not the same" do
    course1 = create :course
    course2 = create :course
    expect(course1.name).not_to eq course2.name
  end

  it "creates courses that don't start at the same time" do
    course1 = create :course
    course2 = create :course
    expect(course1.start).not_to eq course2.start
  end

  it "the second course is in the future" do
    create :course
    course2 = create :course
    expect((course2.start - DateTime.now).to_i).to be < 400
  end
end
