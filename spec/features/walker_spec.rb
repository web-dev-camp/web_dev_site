describe "Site integrity"  do
  before :all do
    @pages = {}
  end

  def walks url
    return if url.include? "http"
    return if url.include? "mailto"
    begin
      visit url
    rescue
      puts "Failed #{url}"
    end
    page.all("a").each do |p|
      ref = p[:href]
      next if @pages.has_key? ref
      next unless ref
      @pages[ref] = false
      walks ref
    end
  end

  it "renders ok" do
    walks "/"
  end

end
