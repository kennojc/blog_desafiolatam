class PostsController < ApplicationController
  def dashboard
  end

  def create
    @post = Post.new(title: params[:title], image_url: params[:image_url], content: params[:content]) 
    
    unless @post.save 
      redirect_to root_path
    end
  end
end
