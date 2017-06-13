
feature 'Blog index' do

  scenario 'index shows' do
    visit blog_index_url
    expect(page).to have_content("Index")
  end

  scenario 'index has links' do
    visit blog_index_url
    expect(page).to have_link(nil, href: /blog/, count: 1)
  end

  scenario 'index first link works' do
    visit blog_index_url
    post = page.all(:link, nil, href: /blog/).first
    visit_url post["href"]
  end

end
