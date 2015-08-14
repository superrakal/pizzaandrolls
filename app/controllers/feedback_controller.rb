class FeedbackController < ApplicationController
  respond_to :json

  def create
    @comment = Comment.new

    if @comment.save
      respond_with @comment, status: :created, location: false
    else
      respond_with @comment, status: :unprocessable_entity
    end
  end
end
