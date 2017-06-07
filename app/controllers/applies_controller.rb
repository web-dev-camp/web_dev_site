class AppliesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_apply, only: [:show , :create , :cancel ]

  def show
    render @apply.new_record? ? :edit :  :show
  end

  def create
    @apply = Apply.new(apply_params)
    @apply.user = current_user

    if @apply.save
      redirect_to application_path, notice: 'We will be in touch by email within a week.'
      ApplyMailer.submit( @apply ).deliver_later
    else
      render :edit
    end

  end

  def cancel
    ApplyMailer.cancel( @apply , params[:reason]).deliver_later
    @apply.delete
    path = params[:reason].blank? ? edit_user_registration_path : application_path
    redirect_to path , alert: 'Application was canceled.'
  end

  private
    def set_apply
      @apply = current_user.application || Apply.new
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apply_params
      params.require(:apply).permit(:primary_choice_course_id, :secondary_choice_course_id, :comment,
                                    :discount_code , :user_id, :sent , :plan)
    end
end
