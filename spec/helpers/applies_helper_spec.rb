RSpec.describe AppliesHelper, type: :helper do

  def make_list(times)
    times.each do |t|
      create( :course , start: Time.now + t.weeks)
    end
  end
  it "shows 2 courses when 3 are created (because 1 is in the past)" do
    make_list [-2 , 2, 2]
    expect(helper.course_select.length).to eq( 2 )
  end

  it "shows 5 of 5 future courses" do
    make_list [2, 4 , 6 , 8 , 10]
    helper.course_select.each do |options|
      course = Course.find options[1]
      expect((course.start - DateTime.now).to_i).to be < 150
    end
  end
end
