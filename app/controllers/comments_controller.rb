class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @commnet = @post.comments.create(params[:comment].permit(:name, :body))
    redirect_to post_path(@post)
  end
end
