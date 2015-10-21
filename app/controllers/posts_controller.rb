class PostsController < ApplicationController
  def index
    @posts = Post.all
    # @tags = Tag.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    # @category = Category.find(params[:category_id])
    # @post = @category.posts.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      render :new
    end

    # @category = Category.find(params[:category_id])
    # @post = @category.posts.new(post_params)
    # if @post.save
    #   flash[:notice] = "Post successfully added!"
    #   redirect_to category_path(@post.category)
    # else
    #   render :new
    # end
  end

  # def edit
  #   @category = Category.find(params[:category_id])
  #   @post = @category.posts.find(params[:id])
  # end
  #
  # def update
  #   @category = Category.find(params[:category_id])
  #   @post = @category.posts.find(params[:id])
  #     if @post.update(post_params)
  #       redirect_to category_path(@category)
  #     else
  #       render :edit
  #     end
  # end
  #
  # def destroy
  #   @category = Category.find(params[:category_id])
  #   @post = Post.find(params[:id])
  #   @post.destroy
  #   redirect_to category_path(@post.category)
  # end
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :contributor, :image, :description, :tag_ids => [])
  end

end
