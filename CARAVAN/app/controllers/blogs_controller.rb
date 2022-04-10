class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def show
  end

  def new
    @blog = Blog.new
  end

  def edit
  end

  def create
    blog = Blog.new(blog_params)
    blog.save
    redirect_to blogs_path
  end

  def edit
  end

  private
  def blog_params
    # params.require(:モデル名).permit(:カラム名1, :カラム名2, ...)
    params.require(:blog).permit(:title, :category, :body)
  end
end
