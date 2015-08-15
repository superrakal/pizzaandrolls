class RollsController < ApplicationController
  def index
    @rolls = Roll.all
  end
end
