
feature 'Page show' do

  scenario 'page shows for correct slug' do
    visit blog_page_url("2017-2-2-Bitcoin")
    expect(page).to have_content("Blog")
  end
  scenario 'page title shows for correct slug' do
    visit blog_page_url("2017-2-2-Bitcoin")
    expect(page).to have_content("Bitcoin")
  end


end
