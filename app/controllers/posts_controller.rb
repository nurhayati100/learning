class PostsController < ApplicationController

  #  GET - posts_path
  #
  def index
    @posts = Post.all
  end

  # GET - new_post_path
  #
  def new
    @post = Post.new
  end

  # POST - posts_path
  #
  def create
    @post = Post.new(params[:post].permit(:title, :text))

    if @post.save
    redirect_to @post
    else
    render 'new'
    end
  end

  # GET - edit_post_path(post_id)
  #
  def edit
    @post = Post.find(params[:id])
  end

  # PUT - post_path(post_id)
  #
  def update
  @post = Post.find(params[:id])

    if @post.update(params[:post].permit(:title, :text))
      redirect_to @post
    else
      render 'edit'
    end
  end

  # GET - post_path(post_id)
  #
  def show
    @post = Post.find(params[:id])
  end

  # DELETE - post_path(post_id)
  #
  def destroy
  @post = Post.find(params[:id])
  @post.destroy

  redirect_to posts_path
 end

  private

    # filter post params
    #
    def post_params
      params.require(:post).permit(:title, :text)
    end
end
