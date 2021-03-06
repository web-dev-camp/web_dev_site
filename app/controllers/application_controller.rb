class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include Pundit

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  protected

  def after_sign_in_path_for(resource_or_scope)
    resume_path
  end

  def after_sign_up_path_for(resource_or_scope)
    page_path(:camp)
  end

  private

  def after_sign_out_path_for(resource_or_scope)
    page_path(:camp)
  end

  def user_not_authorized
    flash[:alert] = "Access denied."
    redirect_to (request.referrer || root_path)
  end

end
