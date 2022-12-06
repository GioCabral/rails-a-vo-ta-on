class ChatroomsController < ApplicationController
  require 'mercadopago'
  def index
    @chatrooms = Chatroom.where("close <> ? AND grandchild_id IN (?, ?)", true, 0, current_user.id)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    sdk = Mercadopago::SDK.new('TEST-6411651370055655-122014-9f896bf26ff35b2932cf5c896bfb39c8-174234657')
    preference_data = {
      items: [
        {
          id: "#{current_user.id}&#{@chatroom.grandchild ? @chatroom.grandchild.id : 1}",
          title: 'Pagamento do netinho',
          unit_price: 10,
          quantity: 1
        }
      ],
      payer_data: {
        name: current_user.name,
        email: current_user.email,
        identification: {
          type: 'id',
          number: current_user.id
        }
      },
      back_urls: {
        success: "https://90df-2804-2448-8094-e600-d55-db0b-34a4-b4b5.sa.ngrok.io/close?chatroom=#{@chatroom.id}",
        failure: "https://90df-2804-2448-8094-e600-d55-db0b-34a4-b4b5.sa.ngrok.io/",
        pending: "https://90df-2804-2448-8094-e600-d55-db0b-34a4-b4b5.sa.ngrok.io/"
      },
      auto_return: 'approved'
    }

    preference_response = sdk.preference.create(preference_data)
    preference = preference_response[:response]
    @preference_id = preference['id']
    @topay = preference['sandbox_init_point']
  end

  def new
    @chatroom = Chatroom.new
  end

  def close_chat
    chatroom = params[:chatroom]
    @chatroom = Chatroom.find(chatroom.to_i)
    if @chatroom.update(close: true)
      redirect_to root_path
    else
      "rubocop para de chorar caralho"
    end
  end

  def create
    category = Category.find(params[:category])
    issue = Issue.find(params[:issue])
    app = App.find(params[:app])
    @chatroom = Chatroom.new
    @chatroom.category = category
    @chatroom.issue = issue
    @chatroom.app = app
    @chatroom.grandparent = current_user
    if @chatroom.save
      redirect_to chatroom_path(@chatroom)
    else
      puts @chartroom.errors.messages
    end
  end

  def update
    @chatroom = Chatroom.find(params[:chatroom])
    @chatroom.grandchild = current_user
    if @chatroom.save
      redirect_to chatroom_path(@chatroom)
    else
      puts @chartroom.errors.messages
    end
  end
end
