class UsersController < ApplicationController
  before_action except: [:new, :create] do
    if @current_user.nil?
      redirect_to sign_in_path, alert: "Please sign if if you'd like to quack"
    end
  end


  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.username = params[:user][:username]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Thanks for signing up #{@user.username}!"
    else
      render :new
    end
  end

  def follow
    user = User.find_by! id: params[:user_id]
    @current_user.follow(user)
    redirect_to :back
  end

  def unfollow
    user = User.find_by! id: params[:user_id]
    @current_user.stop_following(user)
    redirect_to :back
  end

  def ducklings
    @ducklings = @current_user.user_followers
  end
  def following
    @users = @current_user.following_users
  end
end
