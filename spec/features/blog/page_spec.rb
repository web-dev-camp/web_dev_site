
feature 'Page show' do

  scenario 'page shows for correct title' do
    visit_url blog_page_url("title")
    expect(page).to have_content("Blog")
  end
  scenario 'page title shows for correct title' do
    visit_url blog_page_url("title")
    expect(page).to have_content("Bitcoin")
  end

end
