class CategoryController < ApplicationController
  def index
    redirect_to chatrooms_path if current_user.role == 'Neto'
    @categories = Category.all
  end
end
