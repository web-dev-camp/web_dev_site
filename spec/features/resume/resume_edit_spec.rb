
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


end
