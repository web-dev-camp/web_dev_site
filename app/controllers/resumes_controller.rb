class ResumesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_resume, only: [:show, :update , :progress ]

  def show
  end

  def progress
    render layout: false
  end

  def update
    respond_to do |format|
      if @resume.update(resume_params)
        format.html { redirect_to @resume, notice: 'Resume was successfully updated.' }
        format.json { render :show, status: :ok, location: @resume }
      else
        format.html { render :edit }
        format.json { render json: @resume.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resume
      @resume = current_user.resume
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resume_params
      params.require(:resume).permit(:street, :city, :country, :user_id , :finance ,
                                     :school, :uni, :internship, :work, :tech_skills,
                                     :soft_skills, :projects, :other, :interests, :motivation)
    end
end
