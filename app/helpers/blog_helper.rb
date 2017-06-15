module BlogHelper

  def blog_image(name)
    image_tag "blog/#{name}" , class: :large
  end
  def blog_header(name)
    image_tag "blog/#{name}"
  end
  def page_summary(page)
    content = page_content(page)
    content[0 ... 200]
  end
end
