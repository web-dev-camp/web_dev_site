
# Feature: User edit
#   As a user
#   I want to edit my user profile
#   So I can change my email address
feature 'User edit', :devise do

  after(:each) do
    Warden.test_reset!
  end

  scenario 'user changes email address' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit edit_user_registration_path(user)
    fill_in 'Email', :with => 'newemail@example.com'
    fill_in 'Current password', :with => user.password
    click_button 'Update'
    txts = [I18n.t( 'devise.registrations.updated'), I18n.t( 'devise.registrations.update_needs_confirmation')]
    expect(page).to have_content(/.*#{txts[0]}.*|.*#{txts[1]}.*/)
  end

  ["Street","City","Country"].each do |target|
    scenario "user changes #{target}" do
      user = FactoryGirl.create(:user)
      login_as(user, :scope => :user)
      visit edit_user_registration_path(user)
      fill_in target, :with => "New#{target}"
      fill_in 'Current password', :with => user.password
      click_button 'Update'
      expect(user.reload.send(target.downcase)).to eq("New#{target}")
    end
  end

  scenario "user cannot cannot edit another user's profile", :me do
    me = FactoryGirl.create(:user)
    other = FactoryGirl.create(:user, email: 'other@example.com')
    login_as(me, :scope => :user)
    visit edit_user_registration_path(other)
    expect(page).to have_content 'Edit Profile'
    expect(page).to have_field('Email', with: me.email)
  end

end
