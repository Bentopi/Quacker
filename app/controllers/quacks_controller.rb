class QuacksController < ApplicationController

  before_action except: :top do
    if @current_user.nil?
      redirect_to sign_in_path, alert: "Please sign if if you'd like to quack"
    end
  end

  def top
    @top_ducks = User.all
  end


  def new
    @quack = Quack.new
  end

  def create
    @quack = Quack.new
    @quack.body = params[:quack][:body]
    @quack.user = @current_user
    @current_user.post_total += 1

    if @quack.save
      redirect_to root_path, notice: "Quack!"
    else
      render :new
    end
  end

end