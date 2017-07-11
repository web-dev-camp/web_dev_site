describe "Admin User"  do
  before(:each) do
    sign_admin_in
  end
  it "lists users" do
    create_list(:user,3)
    visit_url admin_users_url
  end
  it "shows a user" do
    user = create(:user)
    visit_url admin_user_url(user)
  end
  it "shows an unconfirmed user" do
    user = create(:user , confirmed_at:  nil )
    visit_url admin_user_url(user)
  end
end
