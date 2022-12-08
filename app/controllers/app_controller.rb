class AppController < ApplicationController
  def index
    @chatroom = Chatroom.where(grandparent: current_user).select {|chat| chat.close == false}.last
    redirect_to root_path if @chatroom != nil
    @app = App.where(category: params[:category_id])
    @category = params[:category_id]
  end
end
