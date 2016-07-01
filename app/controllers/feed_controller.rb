class FeedController < ApplicationController
  def index
    @quacks = Quack.all
  end
end
