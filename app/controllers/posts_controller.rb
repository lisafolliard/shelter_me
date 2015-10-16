class PostsController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @post = @category.posts.new
  end

  def create
    @category = Category.find(params[:category_id])
    @post = @category.posts.new(post_params)
    if @post.save
      flash[:notice] = "Post successfully added!"
      redirect_to category_path(@post.category)
    else
      render :new
    end
  end

  def edit
    @category = Category.find(params[:category_id])
    @post = @category.posts.find(params[:id])
  end

  def update
    @category = Category.find(params[:category_id])
    @post = @category.posts.find(params[:id])
      if @post.update(post_params)
        redirect_to category_path(@category)
      else
        render :edit
      end
  end

  def destroy
    @category = Category.find(params[:category_id])
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to category_path(@post.category)
  end

  private
  def post_params
    params.require(:post).permit(:title, :contributor, :image, :description)
  end

end
