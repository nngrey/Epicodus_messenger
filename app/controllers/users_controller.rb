class UsersController < ApplicationController

    def index
      @users = User.all
    end

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      if @user.save
        flash[:notice] = 'New user created.'
        redirect_to user_path
      else
        render 'new'
      end
    end

    def show
      @user = User.find params[:id]
    end

    def edit
      @user = User.find params[:id]
      authorize! :edit, @user
    end

    def update
      @user = User.find params[:id]
      authorize! :update, @user
      if @user.update(user_params)
        flash[:notice] = 'User updated.'
        redirect_to user_path(@user)
      else
        render 'edit'
      end
    end

    def destroy
      @user = User.find params[:id]
      @user.destroy
    end

  private

    def user_params
      params.require(:user).permit(:number, :email, :password)
    end

end
