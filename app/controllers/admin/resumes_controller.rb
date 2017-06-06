module Admin
  class ResumesController < AdminController
    def index
      @q = Resume.search params[:q]
      @resume_scope = @q.result(:distinct => true)
      @resumes = @resume_scope.paginate( :page => params[:page],:per_page => 20)
    end

    def show
      @resume = Resume.find(params[:id])
    end
  end
end
