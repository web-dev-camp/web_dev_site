require 'rails_helper'

RSpec.describe Course, type: :model do

  it "has a working factory" do
    course = build :course
    expect(course.save).to eq true
  end

  it "length is 9 weeks" do
    course = build :course
    expect(course.course_length).to eq 9.weeks
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

  it "the course is in the future" do
    course = create :course
    expect((course.start - DateTime.now).to_i).to be < 410
  end
end
