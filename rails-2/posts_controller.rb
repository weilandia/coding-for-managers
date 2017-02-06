class PostsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]

  def index
    @featured_post = Post.count > 0 ? Post.last : nil
    @posts = Post.count >= 2 ? Post.where("id != ?", @featured_post.id).limit(5) : nil
  end

  def show
    @post = Post.count > 0 ? Post.find(params[:id]) : nil
    @next_post = @post.next.present? ? @post.next : @post.previous
  end

  def new
    @post = Post.new()
  end
   
  def create
    @post = Post.create(post_params)
    
    if @post.valid?
      flash[:success] = "Your post was saved!" 
      redirect_to post_path(@post)
    else
      flash[:error] = "Your post could not be saved. please try again."
      render "new"
    end
  end

  def edit
    @post = Post.find(params[:id])
  end
 
  def update
    @post = Post.find(params[:id])
	
    if @post.update_attributes(post_params)
      redirect_to post_path(@post)
    else
      render :action => "edit" 
    end
  end

  def post_params
    params.require(:post).permit(:image, :title, :user_id, :category_id, :body, :caption, :intro)
  end
end
