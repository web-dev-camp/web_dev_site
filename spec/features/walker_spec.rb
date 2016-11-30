describe "Site integrity"  do
  before :all do
    @pages = {}
  end

  def walk url , from = nil
    return if url.include? "http"
    return if url.include? "mailto"
    begin
      visit url
    rescue  => e
      puts "Failed #{url} , from #{from}"
      raise e
    end
    page.all("a").each do |p|
      next unless ref = p[:href]
      next if @pages.has_key? ref
      @pages[ref] = true
      walk ref , url
    end
  end

  it "renders ok" do
    expect{ walk "/" }.not_to raise_exception
  end

end
