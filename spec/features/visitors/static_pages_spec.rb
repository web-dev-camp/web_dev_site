feature 'Static pages' do

  scenario 'Visit the course page' do
    visit 'course'
    expect(page).to have_content 'Web Application Development'
    expect(page).to have_content 'Technical skill is the start'
    expect(page).to have_content 'You will give 2'
  end

  scenario 'view navigation links' do
    visit root_path
    expect(page).to have_content 'Course'
    expect(page).to have_content 'Apply'
  end

  scenario 'visit the home page' do
    visit root_path
    expect(page).to have_content 'Become a web-developer'
    expect(page).to have_content 'Small groups, relaxed'
    expect(page).to have_content 'Relax in the nature'
  end

  scenario 'visit the admin' do
    visit admin_courses_path
    expect(page).to have_content 'Relax in the nature'
    expect(page.current_path).to eq root_path
  end

end
