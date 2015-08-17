class PyatnicaSharesController < ApplicationController
  def index
    @shares = Share.all.where(type:'Пятница').order_by(to: 'asc').where({:from.lte => Date.current()}).where({:to.gte => Date.current()})
  end
end
