module Admin
  class CoursesController < AdminController

    before_action :load_course, :only => [:show, :edit, :update, :destroy]

    def index
      @q = Course.search(params[:q])
      @course_scope = @q.result(:distinct => true)
      @courses = @course_scope.paginate(:page => params[:page], :per_page => 20)
    end

    def show
    end

    def new
      @course = Course.new
      render :edit
    end

    def edit
    end

    def create
      @course = Course.create(params_for_course)
      if @course.save
        redirect_to course_path(@course), :notice => t(:create_success, :model => :course)
      else
        render :edit
      end
    end

    def update
      @course.update_attributes params_for_course
      if @course.save
        redirect_to course_path(@course), :notice => t(:update_success, :model => :course)
      else
        render :action => :edit
      end
    end

    def destroy
      #    @course.deleted_at = Time.now
      redirect_to courses_url
    end

    private

    def load_course
      @course = Course.find(params[:id])
    end

    def params_for_course
      params.require(:course).permit!
    end
  end
end
