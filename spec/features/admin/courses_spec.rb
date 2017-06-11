describe "Admin Course"  do
  before(:each) do
    sign_admin_in
  end
  it "lists courses" do
    create_list(:course , 3)
    visit_url admin_courses_url
  end

  it "shows a course" do
    course = create(:course)
    visit_url admin_course_url(course)
  end
end
