class HistoryController < ApplicationController
  def index
    @chatrooms = Chatroom.where("grandparent_id = ? AND close = ?", current_user, true)
  end
end
