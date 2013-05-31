class PostsController < ApplicationController
  def index
    render :json => Post.all.to_json
  end

  def show
    rener :json => Post.find(params[:id])
  end

  def update
    logger.debug "UPDATE: #{params}"
    render :nothing => true
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    render :nothing => true
  end
end
