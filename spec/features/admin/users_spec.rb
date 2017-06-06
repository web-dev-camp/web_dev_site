describe "Admin User"  do
  before(:each) do
    sign_admin_in
  end
  it "lists users" do
    create_list(:user,3)
    visit_path admin_users_path
  end
  it "shows a user" do
    user = create(:user)
    visit_path admin_user_path(user)
  end
end
