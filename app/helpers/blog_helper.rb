module BlogHelper
  def page_content(page)
    Kramdown::Document.new(page.content).to_html.html_safe
  end

  def page_summary(page)
    content = page_content(page)
    content[0 ... 200]
  end
end
