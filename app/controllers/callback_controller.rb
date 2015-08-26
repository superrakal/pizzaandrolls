class CallbackController < ApplicationController
  def new_callback
    @text = "#{params[:name]} с номером #{params[:number]} просит PIZZA&ROLLS перезвонить"
    message = MainsmsApi::Message.new(sender: 'PIZZA AND ROLLS', message: @text, recipients: ['77778514141'])
    message.deliver
    session[:callback] = true
    head :ok, content_type: 'text/html'
  end
  def update_status
    render :nothing => true, :status => 200, :content_type => 'text/html'
  end
end
