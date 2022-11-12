class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
  end

  def new
    @chatroom = Chatroom.new
  end

  def create
    @chatroom = Chatroom.new(close: false)
    @chatroom.grandparent = current_user
    @chatroom.save
  end
end
