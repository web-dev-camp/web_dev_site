feature 'About page' do

  scenario 'Visit the course page' do
    visit 'course'
    expect(page).to have_content 'Web Application Development'
    expect(page).to have_content 'Technical skill is the start'
    expect(page).to have_content 'You will give 2'
  end

end
