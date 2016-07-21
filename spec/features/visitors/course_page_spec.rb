feature 'About page' do

  scenario 'Visit the course page' do
    visit 'course'
    expect(page).to have_content '8 week'
    expect(page).to have_content 'live in'
    expect(page).to have_content 'You will give 2'
  end

end
