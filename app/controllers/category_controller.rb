class CategoryController < ApplicationController
  def index
    redirect_to chatrooms_path if current_user.role == 'Neto'
    @chatroom = Chatroom.where(grandparent: current_user).select {|chat| chat.close == false}.last
    redirect_to root_path if @chatroom != nil
    @categories = Category.all
  end
end
