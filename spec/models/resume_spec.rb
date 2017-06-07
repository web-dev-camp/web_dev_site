require 'rails_helper'

RSpec.describe Resume, type: :model do

  describe "factory" do
    it "build saves" do
      resume = build :resume
      expect(resume.save).to eq true
    end
    it 'has user assoc' do
      resume = create :resume
      expect(resume.user).not_to be_nil
    end
  end

  it "has zero percent when nothing is filled" do
    resume = build :resume
    expect(resume.percent).to eq 0
  end
  it "has 7 percent when one is filled" do
    resume = build :resume
    resume.motivation = "I am motivated"
    expect(resume.percent).to eq 7
  end
  it "has 100 percent when all are filled" do
    resume = build :filled_resume
    expect(resume.percent).to eq 100
  end
end
