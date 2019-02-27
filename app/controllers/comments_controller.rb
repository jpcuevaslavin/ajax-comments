class CommentsController < ApplicationController

  def index
    respond_to do |format|
      if !params[:buscador].nil?
        if params[:buscador].blank?
          @comments = Comment.all
        else
          @comments = Comment.where('content LIKE ?', "%#{params[:buscador]}%")
        end
        format.js
      else
        @comments = Comment.all
        format.html
      end
    end
  end

  def create
    @comment = Comment.new(content: params[:comment][:content])
    @comment.save
    respond_to { |format| format.js }
  end
  
end