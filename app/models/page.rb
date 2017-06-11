class Page
  @@pages = nil

  attr_reader :year , :month , :day , :title , :dir , :ext
  def initialize(path)
    @dir = File.dirname(path)
    @base = File.basename(path)
    @year , @month , @day , @title = @base.split("-")
    raise "Invalid path #{path}" unless @title
    @title , @ext = @title.split(".")
  end

  def content
    File.open(@dir + "/" + @base ).read
  end

  def self.pages
    return @@pages if @@pages
    @@pages ={}
    Dir["#{self.blog_path}/*.*"].each do |file|
      page = Page.new(file)
      @@pages[page.title] = page
    end
    @@pages
  end

  def self.blog_path
    Rails.configuration.blog_path
  end
end
