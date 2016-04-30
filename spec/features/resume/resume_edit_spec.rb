include Warden::Test::Helpers
Warden.test_mode!

feature 'Resume edit' do

  after(:each) do
    Warden.test_reset!
  end

  scenario 'user see own resume' do
    sign_new
    visit resume_path()
    expect(page).to have_content("Resume")
  end


end
