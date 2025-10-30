class PostsController < ApplicationController
  before_action :authenticate_user!, only: :new
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @user = User.find(@post.user_id)
  end

  def new
    @user = current_user
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to "/posts/#{@post.id}"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.expect(post: [ :title, :body, :user_id ])
  end
end
