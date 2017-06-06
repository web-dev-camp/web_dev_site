describe "Admin Resume"  do
  before(:each) do
    sign_admin_in
  end
  it "lists resumes" do
    visit_path admin_resumes_path
  end
  it "shows a resume" do
    resume = create(:resume)
    visit_path admin_resume_path(resume)
  end
end
