module Features
  module SessionHelpers
    def sign_up_with(name , email, password, confirmation)
      visit new_user_registration_path
      within ".auth_form_apply" do
        fill_in 'Name', with: name
        fill_in 'Email', with: email
        fill_in 'Password', with: password
        fill_in 'Password confirmation', :with => confirmation
      end
      click_button 'Start'
    end

    def signin(email, password , scope = ".footer-sign")
      visit new_user_session_path
      within scope do
        fill_in 'Email', with: email
        fill_in 'Password', with: password
        click_button 'Sign in'
      end
    end

    def sign_new
      user = FactoryGirl.create(:user)
      signin(user.email, user.password)
      user
    end
  end
end
