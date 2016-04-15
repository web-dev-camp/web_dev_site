feature 'About page' do

  scenario 'Visit the about page' do
    visit 'method'
    expect(page).to have_content 'your talent'
  end

end
