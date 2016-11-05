require 'rails_helper'

RSpec.describe Resume, type: :model do

  it "has a working factory" do
    resume = build :resume
    expect(resume.save).to eq true
  end
end
