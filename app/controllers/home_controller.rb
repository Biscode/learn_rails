class HomeController < ApplicationController
  def index
    @users = User.all
  end

  def create_tweet
    @user = User.find(params[:id])
    @user.tweets.create(:tweet)
    redirect_to root_path
  end
end
