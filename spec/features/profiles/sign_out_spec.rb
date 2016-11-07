# Feature: Sign out
#   As a user
#   I want to sign out
#   So I can protect my account from unauthorized access
feature 'Sign out', :devise do

  scenario 'user signs out successfully(on the footer)' do
    sign_new
    within ".footer-sign" do
      click_link 'Sign out'
    end
    expect(page.current_path).to eq page_path(:camp)
    expect(page).to have_content I18n.t 'devise.sessions.signed_out'
  end

end
