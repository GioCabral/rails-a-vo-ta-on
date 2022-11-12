class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.where(grandchild: nil)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def new
    @chatroom = Chatroom.new
  end

  def create
    @chatroom = Chatroom.new
    @chatroom.grandparent = current_user
    if @chatroom.save
      redirect_to chatroom_path(@chatroom)
    else
      @chartroom.errors.messages
      raise
    end
  end
end
