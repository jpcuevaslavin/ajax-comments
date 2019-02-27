class PagesController < ApplicationController
  def home
  end

  def about
  end

  def add_content
    @title = params[:title]
    respond_to do |format|
      format.js
    end
  end
  
end
