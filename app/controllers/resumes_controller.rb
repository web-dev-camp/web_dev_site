class ResumesController < ApplicationController
  before_action :set_resume, only: [:show, :edit, :update ]

  def show
  end

  # PATCH/PUT /resumes/1.json
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
      params.require(:resume).permit(:street, :city, :country, :user_id ,
                                     :school, :uni, :internship, :work, :tech_skills,
                                     :soft_skills, :projects, :other, :interests, :motivation)
    end
end
