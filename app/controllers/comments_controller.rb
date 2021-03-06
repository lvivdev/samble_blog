class CommentsController < ApplicationController
  before_filter :authenticate_user!, :only => [:create]

  def new   
  end

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      redirect_to article_path(@article)
    else
      render plain: 'Message is not saved'      
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

end
