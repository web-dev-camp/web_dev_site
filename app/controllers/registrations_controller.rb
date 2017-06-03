class RegistrationsController < Devise::RegistrationsController

  protected

  def after_inactive_sign_up_path_for(resource)
    page_path(:camp)
  end
  def after_update_path_for(resource)
    resume_path
  end

  private
  def sign_up_params
    params.require(:user).permit(:name, :email,:street,:city,
                                 :country , :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :email,:street,:city,:country,
                            :password, :password_confirmation, :current_password)
  end
end
