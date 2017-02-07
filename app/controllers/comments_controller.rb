class CommentsController < ApplicationController
  def create
  @article = Article.find(params[:article_id])
  @article.comments.create({})    
  end
end
