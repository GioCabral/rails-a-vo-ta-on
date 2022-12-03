class FeedsController < ApplicationController
  def index
    @feed = Feed.all
    @new_feed = Feed.new
  end

  def create
    @feed = Feed.new(set_params)
    @feed.user = current_user
    if @feed.save
      redirect_to feeds_path
    else
      puts @feed.errors.messages
    end
  end

  private

  def set_params
    params.require(:feed).permit(:content, :photo)
  end
end
