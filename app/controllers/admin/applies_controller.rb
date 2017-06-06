module Admin
  class AppliesController < AdminController
    def index
      @q = Apply.search params[:q]
      @apply_scope = @q.result(:distinct => true)
      @applies = @apply_scope.paginate( :page => params[:page],:per_page => 20)
    end

    def show
      @apply = Apply.find(params[:id])
    end
  end
end
