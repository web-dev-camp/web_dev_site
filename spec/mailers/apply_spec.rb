require "rails_helper"

RSpec.describe ApplyMailer, type: :mailer do
  describe "submit" do
    let(:mail) { ApplyMailer.submit( create :apply ) }

    it "renders the headers" do
      expect(mail.subject).to match("submitted")
      expect(mail.to.first).to match(/user.*test.com/)
      expect(mail.from).to eq(["admission@webdev.camp"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("received")
    end
  end

  describe "cancel" do
    let(:mail) { ApplyMailer.cancel(create(:apply)  , "No reason") }

    it "renders the headers" do
      expect(mail.subject).to match("cancelled")
      expect(mail.to.first).to match(/user.*test.com/)
      expect(mail.bcc).to eq(["admission@webdev.camp"])
      expect(mail.from).to eq(["admission@webdev.camp"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("cancel")
    end
  end

end
