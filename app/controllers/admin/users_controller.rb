module Admin
  class UsersController < AdminController

    def index
      @q = User.search params[:q]
      @user_scope = @q.result(:distinct => true)
      @users = @user_scope.paginate( :page => params[:page],:per_page => 20)
    end

    def show
      @user = User.find(params[:id])
    end

  end
end
