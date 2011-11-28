class MicropostsController < ApplicationController
  before_filter :authenticate, :only => [:create, :destroy]

  def create
    @micropost = current_user.microposts.build(params[:micropost])
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_path
    else
      @feed_items = []
      render 'pages/home'
    end
  end

  def destroy
    @micropost = current_user.microposts
    @micropost.find(params[:id]).destroy
    flash[:success] = "Post destroyed."
    redirect_to root_path
  end
end