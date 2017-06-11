module Admin
  class ResumesController < AdminController
    def index
      @q = Resume.search params[:q]
      @resume_scope = @q.result(:distinct => true)
      @resumes = @resume_scope.page( params[:page] )
    end

    def show
      @resume = Resume.find(params[:id])
    end
  end
end
