class UsersController < ApplicationController
  def index
    @users = User.all
    respond_to do |format|
      format.html
      format.json { render json: @users }
    end
  end

  def show
    @user = User.find(params[:id])
    @recent_posts = @user.recent_3_posts
    respond_to do |format|
      format.html
      format.json { render json: @user }
    end
  end
end
