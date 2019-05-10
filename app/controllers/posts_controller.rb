class PostsController < ApplicationController
 
	# protect_from_forgery
 
  def new
  	@post= Post.new
  end

  def show
    @post= Post.find(params[:id])
  end

  def index
    
    @post = Post.new
    @page = params[:page] || '1'
  
    @posts = Post.all.paginate(:page => @page, :per_page => 3)
    
  end
  def likes
   
    @post = Post.find(params[:post_id])
    @like = @post.likes.where(likeable_id: @post.id).first_or_initialize
    if @like.persisted?
      @like.delete
    else
      @like.save
    end
  end
  
	def create
    @post = current_user.posts.create(post_params) 
    @posts=Post.all.paginate(:page =>  params[:page], :per_page => 3)

    respond_to do |format|
      format.js   
    end
  end


  def destroy
      @post = Post.find(params[:id])
      @post.destroy
      redirect_to posts_path
  end

  

 private
 def post_params
 	params.require(:post).permit(:text,:user_id)
 end
end


 