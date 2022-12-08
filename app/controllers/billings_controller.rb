class BillingsController < ApplicationController
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token
  skip_before_action :authenticate_user!
  def receive
    payment_id = params[:data][:id]
    ProcessPaymentsJob.perform_later(payment_id)
  end

  def index
    @billings = Billing.where(grandparent: current_user).or(Billing.where(grandchild: current_user))
  end
end
