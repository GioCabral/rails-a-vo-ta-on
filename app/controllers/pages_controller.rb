class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    redirect_to chatrooms_path if user_signed_in? && current_user.role == "Neto"
    @chatroom = Chatroom.where(grandparent: current_user).select {|chat| chat.close == false}.last
    if user_signed_in? && current_user.role == "Avós" && @chatroom != nil
      redirect_to chatroom_path(@chatroom)
    elsif user_signed_in? && current_user.role == "Avós"
      redirect_to category_index_path
    end
  end
end
