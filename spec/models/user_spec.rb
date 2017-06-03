describe User do

  describe "emails" do
    before(:each) { @user = User.new(email: 'user@example.com') }

    subject { @user }

    it { should respond_to(:email) }

    it "#email returns a string" do
      expect(@user.email).to match 'user@example.com'
    end
  end

  it "factory works" do
    user = build :user
    expect(user).to be_valid
  end
end
