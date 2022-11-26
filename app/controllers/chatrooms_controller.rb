class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.where("grandchild_id = ? AND grandchild_id = ?", current_user, nil)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def new
    @chatroom = Chatroom.new
  end

  def create
    category = Category.find(params[:category])
    issue = Issue.find(params[:issue])
    app = App.find(params[:app])
    @chatroom = Chatroom.new
    @chatroom.category = category
    @chatroom.issue = issue
    @chatroom.app = app
    @chatroom.grandparent = current_user
    if @chatroom.save
      redirect_to chatroom_path(@chatroom)
    else
      puts @chartroom.errors.messages
    end
  end

  def update
    @chatroom = Chatroom.find(params[:chatroom])
    @chatroom.grandchild = current_user
    if @chatroom.save
      redirect_to chatroom_path(@chatroom)
    else
      puts @chartroom.errors.messages
    end
  end
end
