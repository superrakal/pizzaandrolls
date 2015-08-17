class CallbackController < ApplicationController
  def new_callback
    @text = "Клиент по имени  #{params[:name]} и с номером #{params[:number]} просит PIZZA&ROLLS перезвонить ему."
    message = MainsmsApi::Message.new(sender: 'PIZZA AND ROLLS', message: @text, recipients: ['87055083705'])
    message.deliver
    session[:callback] = true
    head :ok, content_type: 'text/html'
  end
end