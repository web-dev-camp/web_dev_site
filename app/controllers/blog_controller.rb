class BlogController < ApplicationController

  def page
    slug = params[:slug]
    return redirect_to(root_path) unless slug
    @page = get_page(slug)
    return redirect_to(root_path) unless @page
  end

  def get_page(slug)
    Page.new(slug)
  end
end
