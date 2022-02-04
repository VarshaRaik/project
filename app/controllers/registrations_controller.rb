class RegistrationsController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
        # stores saved user id in a session
          session[:user_id] = @user.id
          redirect_to root_path, notice: 'Successfully created account'
        else
          render :new
        end
    end
  
    def destroy
      @user= User.find(params[:id])
      @user.destroy
  
      redirect_to root_path
    end

      private
      def user_params
        # strong parameters
        params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name)
      end
end
