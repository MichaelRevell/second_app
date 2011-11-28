class PagesController < ApplicationController

  def home
    @title = "Home"
    @micropost = Micropost.new if signed_in?
    @user = current_user if signed_in?
    @microposts = @user.microposts.paginate(:page => params[:page])
  end

  def contact
    @title = "Contact"
  end

  def about
    @title = "About"
  end
  
  def help
      @title = "Help"
  end
end