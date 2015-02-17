class UsersController < ApplicationController
  before_action :prepare_user, only: [:show]
  def index
    @users = User.all
  end

  def show
  end

  private
  def prepare_user
    @user = User.find(params[:id])
  end
end
