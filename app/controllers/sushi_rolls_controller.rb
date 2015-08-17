class SushiRollsController < ApplicationController
  def index
    @sushi_roll = SushiRoll.all
  end
end
