class FeedController < ApplicationController
  def index
    @quacks = @current_user.timeline


    # if @current_user
    #   @quacks = @current_user.timeline
    # else
    # @quacks = Quack.all
    # end




  end

end
