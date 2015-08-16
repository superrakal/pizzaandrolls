class WelcomeController < ApplicationController
  def index
    @comments = Comment.all.where(approved: true).order_by(id: 'desc').limit(10)
    @top = Item.all.where(top: true).order_by(id: 'desc').limit(8)
    @isCalledBack = session[:callback]
  end
end
