class PostsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    posts = Post.create!(post_params)
    redirect_to posts
  end

  def edit
  end

  def update
  end

  def destory
  end

  private
  
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
