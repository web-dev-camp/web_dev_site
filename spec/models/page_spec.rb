require 'rails_helper'

RSpec.describe Page, type: :model do

  describe "creation" do
    it "ok with valid slug" do
      page = Page.new("1993-2-4-title")
      expect(page).not_to eq nil
    end
    it "raises with invalid slug" do
      expect{Page.new("1993-4-title")}.to raise_error RuntimeError
    end
  end

  describe "basic api" do
    before :each do
      @page = Page.new("1993-2-4-title")
    end
    it "returns title" do
      expect(@page.title).to eq "title"
    end
    it "returns dates" do
      expect(@page.year).to eq "1993"
      expect(@page.month).to eq "2"
      expect(@page.day).to eq "4"
    end
  end

  it "returns title without extension if given file name" do
    page = Page.new("1993-2-4-title.rb")
    expect(page.title).to eq "title"
  end
end