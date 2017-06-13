
feature 'Blog index' do

  scenario 'index shows' do
    visit_url blog_index_url
  end

  scenario 'index has links' do
    visit blog_index_url
    post = page.all(:link, nil, href: /blog/).first
    expect(post).not_to be_nil
  end

  scenario 'index first link works' do
    visit blog_index_url
    post = page.all(:link, nil, href: /blog/).first
    visit_url post["href"]
  end

end
