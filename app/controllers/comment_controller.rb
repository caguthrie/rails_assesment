class CommentController < ApplicationController
  def show
  end

  def create
    p = Post.find(comment_params[:post_id])
    if comment_params.length == 3
      c = Comment.create(comment_params)
      c.save
    end
    redirect_to Post.find(comment_params[:post_id])
  end

  private
  def comment_params
    params.require(:comment).permit(:title, :content, :post_id)
  end
end
