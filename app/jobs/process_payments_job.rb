class ProcessPaymentsJob < ApplicationJob
  queue_as :default
  require 'open-uri'

  def perform(payment_id)
    # Do something later
    document = URI.open("https://api.mercadopago.com/v1/payments/#{payment_id}?access_token=TEST-6411651370055655-122014-9f896bf26ff35b2932cf5c896bfb39c8-174234657").read
    new_doc = JSON.parse(document)
    usr = new_doc["additional_info"]["items"][0]["id"].split("&", 2)
    title = new_doc["additional_info"]["items"][0]["title"]
    total = new_doc["additional_info"]["items"][0]["unit_price"]
    payment_method = new_doc["payment_method_id"]
    status = new_doc["status"]
    grandparent_id = User.find(usr[0].to_i)
    grandchild_id = User.find(usr[1].to_i)
    Billing.create!(grandparent: grandparent_id, grandchild: grandchild_id, title: title, total: total, payment_method: payment_method, status: status)
  end
end
