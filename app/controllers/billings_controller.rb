class BillingsController < ApplicationController
  protect_from_forgery with: :null_session
  skip_before_action :authenticate_user!
  def receive
    payment_id = params[:data][:id]
    ProcessPaymentsJob.perform_later(payment_id)
  end
end
