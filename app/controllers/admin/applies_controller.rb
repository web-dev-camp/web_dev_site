module Admin
  class AppliesController < AdminController
    def index
      @q = Apply.search params[:q]
      @apply_scope = @q.result(:distinct => true)
      @applies = @apply_scope.page( params[:page] )
    end

    def show
      @apply = Apply.find(params[:id])
    end
  end
end
