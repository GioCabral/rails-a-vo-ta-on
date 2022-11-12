class IssuesController < ApplicationController
  def index
    @category = params[:category_id]
    @issues = Issue.where(category: @category)
  end
end
