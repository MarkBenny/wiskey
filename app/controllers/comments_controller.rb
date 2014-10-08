class CommentsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]


  def index
    @comments = Comment.all
  end

  
  def show
  end


  def new
    @comment = Comment.new
  end

  
  def edit
  end


  def create
    @comment = Comment.new(comment_params)
    @post = Post.find params[:post_id]
    @post.comments << @comment
    redirect_to @post
  
  end



  def update
    
      if @comment.update(comment_params)
        redirect_to @post, notice: 'Post was successfully updated.' 
    
      else
         render :edit 
        
     end
  end


  def destroy
    @comment.destroy
   
     redirect_to posts_url, notice: 'Post was successfully destroyed.'
      
  end

  private
  
    def set_post
      @comment = Post.find(params[:id])
    end

  
    def comment_params
      params.require(:comment).permit(:name, :user_id, :title, :text)
    end
end
