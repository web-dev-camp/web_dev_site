# Feature: Sign out
#   As a user
#   I want to sign out
#   So I can protect my account from unauthorized access
feature 'Sign out', :devise do

  # Scenario: User signs out successfully
  #   Given I am signed in
  #   When I sign out
  #   Then I see a signed out message
  scenario 'user signs out successfully (on header)' do
    user = FactoryGirl.create(:user)
    signin(user.email, user.password)
    expect(page).to have_content I18n.t 'devise.sessions.signed_in'
    within "#slidetop" do
      click_link 'Sign out'
    end
    expect(page).to have_content I18n.t 'devise.sessions.signed_out'
  end

  scenario 'user signs out successfully(on the footer)' do
    sign_new
    within "#footer" do
      click_link 'Sign out'
    end
    expect(page.current_path).to eq page_path(:camp)
  end

end
