require 'rails_helper'

RSpec.describe Page, type: :model do

  describe "creation" do
    it "ok with valid slug" do
      page = Page.new("_1993-2-4-title")
      expect(page).not_to eq nil
    end
    it "raises with invalid slug" do
      expect{Page.new("_1993-4-title")}.to raise_error RuntimeError
    end
    it "must start with a year" do
      expect{Page.new("_no-num-4-title")}.to raise_error RuntimeError
    end
    it "must start with a underscore" do
      expect{Page.new("_no-num-4-title")}.to raise_error RuntimeError
    end
  end

  describe "basic api" do
    before :each do
      @page = Page.new("_1993-2-4-title")
    end
    it "returns title" do
      expect(@page.title).to eq "title"
    end
    it "returns dates" do
      expect(@page.year).to eq 1993
      expect(@page.month).to eq 2
      expect(@page.day).to eq 4
    end
    it "returns date" do
      expect(@page.date).to eq "1993-2-4"
    end
    it "returns file_name" do
      expect(@page.template_name).to eq "1993-2-4-title"
    end
  end

  describe "precise api definition" do
    it "returns whole title" do
      page = Page.new("_1993-2-4-Multi-word-title")
      expect(page.title).to eq "Multi word title"
    end
    it "returns slug" do
      page = Page.new("_1993-2-4-Multi-word-title")
      expect(page.slug).to eq "multi-word-title"
    end
    it "returns title without extension if given file name" do
      page = Page.new("_1993-2-4-title.rb")
      expect(page.title).to eq "title"
    end
    it 'slugs are downcase' do
      page = Page.new("_1993-2-4-Multi-word-title")
      slug = page.slug
      expect(slug.downcase).to eq slug
    end
  end

  describe "page list" do
    before :each do
      @pages = Page.pages
      @first = @pages.values.first
    end
    it "first page has content" do
      expect(@pages.values.first.content.length).to be > 10
    end
    it "return a list of pages" do
      expect(@pages.class).to eq Hash
      expect(@pages.length).to be > 0
    end
    it "page template exists" do
      file = Page.blog_path + "/_" + @first.template_name + ".haml"
      expect(File.exists?(file)).to eq true
    end
  end
end
