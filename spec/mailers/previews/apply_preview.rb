# Preview all emails at http://localhost:3000/rails/mailers/apply
class ApplyPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/apply/submit
  def submit
    Apply.submit
  end

  # Preview this email at http://localhost:3000/rails/mailers/apply/cancel
  def cancel
    Apply.cancel
  end

end
