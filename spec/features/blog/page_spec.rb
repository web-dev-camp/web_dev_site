
feature 'Page show' do

  scenario 'page shows for correct title' do
    visit_url blog_page_url("Basic-instructions-for-writing-blogs")
    expect(page).to have_content("instructions")
  end
  scenario 'page title shows for correct title' do
    visit_url blog_page_url("Basic-instructions-for-writing-blogs")
    expect(page).to have_content("Headings")
  end

end
