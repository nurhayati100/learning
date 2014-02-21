class SaysController < ApplicationController

  # POST - post_says_path
  #
  def create
    @post = Post.find(params[:post_id])
    @say = @post.says.create(params[:say].permit(:commenter, :body))
      redirect_to post_path(@post)
  end

  # DELETE - post_say_path(post_say_id)
  #
  def destroy
    @post = Post.find(params[:post_id])
    @say = @post.says.find(params[:id])
    @say.destroy
    redirect_to post_path(@post)
  end
end
