describe "Admin Apply"  do
  before(:each) do
    sign_admin_in
  end
  it "lists applies" do
    create_list(:apply , 3)
    visit_url admin_applies_url
  end
  it "shows a apply" do
    apply = create(:apply)
    visit_url admin_apply_url(apply)
  end
  it "lists applies after deleting user" do
    list = create_list(:apply , 3)
    list.first.user.destroy
    visit_url admin_applies_url
  end
end
