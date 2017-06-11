
feature 'Blog index' do

  scenario 'index shows' do
    visit blog_index_url
    expect(page).to have_content("Index")
  end


end
