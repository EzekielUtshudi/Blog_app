class PostsController < ApplicationController
  def index
    @posts = Post.includes(:user).where(user: params[:user_id])
    respond_to do |format|
      format.html
      format.json { render json: @posts }
    end
  end

  def create
    post = params[:post]
    user = current_user

    new_post = Post.new(post.permit(:title, :text))
    new_post.comments_counter = 0
    new_post.likes_counter = 0
    new_post.user = user

    if new_post.save
      flash[:notice] = 'New post created successfully.'
      redirect_to user_post_url(user, new_post)
    else
      flash[:error] = 'Creating new post failed!'
      @post = new_post
      render :new
    end
  end

  def new
    @post = Post.new
    render :new
  end

  def show
    @post = Post.includes(:user, comments: [:user]).find(params[:id])
  end
end
