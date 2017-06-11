module Admin
  class UsersController < AdminController

    def index
      @q = User.search( params[:q])
      @user_scope = @q.result(:distinct => true).includes(:application, :resume)
      @users = @user_scope.page( params[:page] )
    end

    def show
      @user = User.find(params[:id])
    end

  end
end
