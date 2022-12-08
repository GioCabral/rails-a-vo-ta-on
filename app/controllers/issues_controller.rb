class IssuesController < ApplicationController
  def index
    @chatroom = Chatroom.where(grandparent: current_user).select {|chat| chat.close == false}.last
    redirect_to root_path if @chatroom != nil
    @category = params[:category_id]
    @issues = Issue.where(category: @category)
  end
end
