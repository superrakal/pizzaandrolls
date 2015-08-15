class PizzaController < ApplicationController
  def index
    @pizza = Pizza.all
  end
end
