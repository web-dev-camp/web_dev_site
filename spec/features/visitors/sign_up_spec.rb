# Feature: Sign up
#   As a visitor
#   I want to sign up
#   So I can visit protected areas of the site
feature 'Sign Up', :devise do

  scenario 'after good sign up redirect to camp' do
    sign_up_with()
    expect(page.current_path).to eq page_path(:camp)
  end

  scenario 'visitor can sign up with valid email address and password' do
    sign_up_with()
    txts = [I18n.t( 'devise.registrations.signed_up'), I18n.t( 'devise.registrations.signed_up_but_unconfirmed')]
    expect(page).to have_content(/.*#{txts[0]}.*|.*#{txts[1]}.*/)
  end

  scenario 'visitor cannot sign up with invalid email address' do
    sign_up_with( email: 'bogus')
    expect(page).to have_content 'Email is invalid'
  end

  scenario 'visitor cannot sign up without password' do
    sign_up_with(password: '')
    expect(page).to have_content "Password can't be blank"
  end

  scenario 'visitor cannot sign up with a short password' do
    sign_up_with(password: "please" )
    expect(page).to have_content "Password is too short"
  end

  scenario 'visitor cannot sign up without password confirmation' do
    sign_up_with(confirmation: '')
    expect(page).to have_content "Password confirmation doesn't match"
  end

  scenario 'visitor cannot sign up with mismatched password and confirmation' do
    sign_up_with(password: 'please123', confirmation: 'mismatch')
    expect(page).to have_content "Password confirmation doesn't match"
  end

end
