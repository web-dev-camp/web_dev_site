
feature 'Resume edit' do

  after(:each) do
    Warden.test_reset!
  end

  scenario 'user see own resume' do
    sign_new
    visit resume_path()
    expect(page).to have_content("Resume")
    expect(page).to have_content("Resume")
  end

  scenario 'progress json call works' do
    user = sign_new
    visit resume_path(format: :json)
    user.resume.percent_attributes.each do |name|
      expect(page).to have_content(name)
    end
  end

  scenario "progress works" do
    sign_new
    visit_url progress_resume_url()
  end

end
