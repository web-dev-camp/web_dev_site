describe User do

  describe "emails" do
    before(:each) { @user = User.new(email: 'user@example.com') }

    subject { @user }

    it { should respond_to(:email) }

    it "#email returns a string" do
      expect(@user.email).to match 'user@example.com'
    end
  end

  describe "factory" do
    it "basic build" do
      user = build :user
      expect(user).to be_valid
    end
    it "application assoc" do
      user = create :user
      expect(user.application).to be_nil
    end
    it "resume assoc" do
      user = create :user
      expect(user.resume).not_to be_nil
    end
  end
end
