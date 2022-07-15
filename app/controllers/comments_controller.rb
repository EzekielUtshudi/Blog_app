class CommentsController < ApplicationController
  before_action :authenticate_user!

  def index
    post = Post.find(params[:post_id])
    render json: post.comments
  end

  def new
    @comment = Comment.new
    render :new
  end

  def create
    comment_author = current_user
    post = Post.find(params[:post_id])
    post_author = post.user

    comment = params[:comment]

    new_comment = Comment.new(comment.permit(:text))
    new_comment.post = post
    new_comment.user = comment_author

    return unless new_comment.save

    respond_to do |format|
      format.html do
        flash[:notice] = 'You commented.'
        redirect_to user_post_url(post_author, post)
      end
      format.json do
        render json: new_comment
      end
    end
  end
end
