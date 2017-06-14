
feature 'Page show' do

  scenario 'page shows for correct title' do
    visit_url blog_page_url("the-distraction-free-path-to-becoming-a-professional-programmer")
  end
  scenario 'page title shows for correct title' do
    visit_url blog_page_url("the-distraction-free-path-to-becoming-a-professional-programmer")
    expect(page).to have_content("Professional Programmer")
  end

end
