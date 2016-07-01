class FeedController < ApplicationController
  def index
    if @current_user
      @quacks = @current_user.timeline
    else
    @quacks = Quack.all
    end
end

end
