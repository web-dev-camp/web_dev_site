module RequestHelper
  def ensure_path path
    expect(page.current_path).to eq path
  end
  def visit_path path
    visit path
    expect(status_code).to be 200
    expect(page).not_to have_css(".translation_missing")
    ensure_path path
  end

  def ensure_admin
    admin = User.where(:role => :admin).first
    admin = create :admin unless admin
    expect(admin).not_to be nil
    admin
  end

  def sign_admin_in
    admin = ensure_admin
    signin(admin.email, admin.password , ".footer-sign")
    expect(page).to have_content I18n.t 'devise.sessions.signed_in'
    admin
  end
end

RSpec.configure do |config|
  config.include RequestHelper
end
