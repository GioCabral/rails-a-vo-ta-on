class AppController < ApplicationController
  def index
    @app = App.where(category: params[:category_id])
    @category = params[:category_id]
  end
end
