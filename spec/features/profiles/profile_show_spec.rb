
# Feature: User profile page
#   As a user
#   I want to visit my user profile page
#   So I can see my personal account data
feature 'User profile page', :devise do

  after(:each) do
    Warden.test_reset!
  end

  scenario 'user sees own profile' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit edit_user_registration_path
    expect(page).to have_content 'Password confirmation'
    expect(find_field('user_email').value).to eq user.email
    expect(find_field('user_street').value).to eq user.street
  end

end
