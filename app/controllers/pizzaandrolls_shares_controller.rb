class PizzaandrollsSharesController < ApplicationController
  def index
    @shares = Share.all.where(type:'PIZZA&ROLLS').order_by(to: 'asc').where({:from.lte => Date.current()}).where({:to.gte => Date.current()})
  end
end
