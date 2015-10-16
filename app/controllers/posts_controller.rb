class PostsController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @post = @category.posts.new
  end

  def create
    @category = Category.find(params[:category_id])
    @post = @category.posts.new(post_params)
    if @post.save
      redirect_to category_path(@post.category)
    else
      render :new
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :contributor, :image, :description)
  end

end
