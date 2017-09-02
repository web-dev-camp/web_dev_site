module Admin
  class CoursesController < AdminController

    before_action :load_course, :only => [:show, :edit, :update, :destroy]

    def index
      @q = Course.search(params[:q])
      @course_scope = @q.result(:distinct => true)
      @courses = @course_scope.page( params[:page] )
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
        redirect_to admin_course_path(@course), :notice => "Course created"
      else
        render :edit
      end
    end

    def update
      @course.update_attributes params_for_course
      if @course.save
        redirect_to admin_course_path(@course), :notice => "Course updated"
      else
        render :action => :edit
      end
    end

    def destroy
      #    @course.deleted_at = Time.now
      redirect_to admin_courses_url
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
