require "rails_helper"

RSpec.describe Apply, type: :mailer do
  describe "submit" do
    let(:mail) { Apply.submit }

    it "renders the headers" do
      expect(mail.subject).to eq("Submit")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["info@webdev.camp"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("received")
    end
  end

  describe "cancel" do
    let(:mail) { Apply.cancel }

    it "renders the headers" do
      expect(mail.subject).to eq("Cancel")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.bcc).to eq(["torsten@webdev.camp"])
      expect(mail.from).to eq(["info@webdev.camp"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("cancel")
    end
  end

end
