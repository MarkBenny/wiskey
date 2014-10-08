class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]


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
    @current_user.comments << @comment
    redirect_to @post
  
  end



  def update
    
      if @comment.update(comment_params)
        redirect_to @comment.post, notice: 'Comment was successfully updated.' 
    
      else
         render :edit 
        
     end
  end


  def destroy
    @comment.destroy
   
     redirect_to @comment.post, notice: 'Post was successfully destroyed.'
      
  end

  private
  
    def set_comment
      @comment = Comment.find(params[:id])
    end

  
    def comment_params
      params.require(:comment).permit(:name, :user_id, :title, :text)
    end
end
