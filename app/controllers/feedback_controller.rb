class FeedbackController < ApplicationController
  respond_to :json

  def create
    @comment = Comment.new(name:params[:name], email:params[:email], text: params[:text])

    if @comment.save
      respond_with @comment, status: :created, location: false
    else
      respond_with @comment, status: :unprocessable_entity
    end

    head :ok, content_type: 'text/html'
  end
end
