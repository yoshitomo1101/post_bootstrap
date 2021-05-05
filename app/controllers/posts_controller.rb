class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]

  def index
    @posts = Post.order(id: :asc)
  end

  def show
    # @post = Post.find(params[:id])
    # before_action定義したのでコメント
  end

  def new
    @post = Post.new
  end

  def create
    posts = Post.create!(post_params)
    redirect_to posts
  end

  def edit
    # @post = Post.find(params[:id])
    # before_action定義したのでコメント
  end

  def update
    # post = Post.find(params[:id])
    # before_action定義したのでコメント(@を追加しているので注意)
    @post.update!(post_params)
    redirect_to @post
  end

  def destroy
    # post = Post.find(params[:id])
    # before_action定義したのでコメント(@を追加しているので注意)
    @post.destroy!
    redirect_to root_path
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end
  
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
