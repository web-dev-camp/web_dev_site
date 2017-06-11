describe "Admin Resume"  do
  before(:each) do
    sign_admin_in
  end
  it "lists resumes" do
    create_list(:resume,3)
    visit_url admin_resumes_url
  end
  it "shows a resume" do
    resume = create(:resume)
    visit_url admin_resume_url(resume)
  end
end
