class PostsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @user = current_user
    @post = Post.new
    @posts = current_user.posts
  end
  def create
    @user = current_user
    @user.posts << Post.new(post_params)
    if @user.save
      flash[:alert] = "works!!!!!!"
    else
      flash[:error] = "Doesn't work!!!!!!"
    end
    redirect_to user_posts_path
  end
  def show
    @post = User.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :image_url)
  end
end
