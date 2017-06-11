class Page

  attr_reader :year , :month , :day , :title
  def initialize(path)
    @year , @month , @day , @title = path.split("-")
    raise "Invalid path #{path}" unless @title
    @title = @title.split(".").first
  end

end
