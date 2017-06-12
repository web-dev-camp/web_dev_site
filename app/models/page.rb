class Page
  @@pages = nil

  attr_reader :year , :month , :day , :dir , :ext
  def initialize(path)
    @dir = File.dirname(path)
    base , @ext = File.basename(path).split(".")
    raise "must be partial, statr with _ not:#{base}" unless base[0] == "_"
    @words = base.split("-")
    @year = parse_int(@words.shift[1 .. -1] , 2100)
    @month = parse_int(@words.shift , 12)
    @day = parse_int(@words.shift , 32)
    raise "Invalid path #{path}" unless @words
  end

  def slug
    @words.join("-")
  end
  def title
    @words.join(" ")
  end
  def template_name
    "#{date}-#{slug}"
  end
  def date
    "#{year}-#{month}-#{day}"
  end
  def parse_int( value , max)
    ret = value.to_i
    raise "invalid value #{value} > #{max}" if ret > max or ret < 1
    ret
  end
  def content
    File.open("#{@dir}/_#{template_name}.#{ext}" ).read
  end
  def summary
    content.split("%h2").first.gsub("%p", "")
  end
  def self.pages
    return @@pages if @@pages
    @@pages ={}
    Dir["#{self.blog_path}/_2*.haml"].each do |file|
      page = Page.new(file)
      @@pages[page.slug] = page
    end
    @@pages
  end

  def self.blog_path
    Rails.configuration.blog_path
  end
end
