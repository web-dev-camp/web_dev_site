describe "Admin Course"  do
  before(:each) do
    sign_admin_in
  end
  it "lists courses" do
    #create(:course)
    visit_path admin_courses_path
  end

  it "shows a course" do
    course = create(:course)
    visit_path admin_course_path(course)
  end
end
