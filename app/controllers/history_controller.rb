class HistoryController < ApplicationController
  def index
    @chatrooms = Chatroom.where(grandparent: current_user).or(Chatroom.where(close: true))
  end
end
