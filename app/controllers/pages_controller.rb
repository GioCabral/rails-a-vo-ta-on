class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    redirect_to chatrooms_path if user_signed_in? && current_user.role == "Neto"
    redirect_to category_index_path if user_signed_in? && current_user.role == "Avós"
  end
end
