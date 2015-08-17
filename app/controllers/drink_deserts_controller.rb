class DrinkDesertsController < ApplicationController
  def index
    @drink_deserts = DrinkDesert.all
  end
end
