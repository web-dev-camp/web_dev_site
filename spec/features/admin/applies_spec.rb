describe "Admin Apply"  do
  before(:each) do
    sign_admin_in
  end
  it "lists applies" do
    visit_path admin_applies_path
  end
  it "shows a apply" do
    apply = create(:apply)
    visit_path admin_apply_path(apply)
  end
end
