class AppliesController < ApplicationController
  before_action :set_apply, only: [:show , :create]

  # GET /applies/1
  # GET /applies/1.json
  def show
    render @apply.new_record? ? :edit :  :show
  end

  # POST /applies
  # POST /applies.json
  def create
    @apply = Apply.new(apply_params)
    @apply.user = current_user

    respond_to do |format|
      if @apply.save
        format.html { redirect_to application_path, notice: 'ApplicationController was successfully created.' }
        format.json { render :show, status: :created, location: @apply }
      else
        format.html { render :edit }
        format.json { render json: @apply.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apply
      @apply = current_user.application || Apply.new
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apply_params
      params.require(:apply).permit(:primary_choice_id, :secondary_choice_id, :comment, :user_id, :sent)
    end
end
