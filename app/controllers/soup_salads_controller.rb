class SoupSaladsController < ApplicationController
  def index
    @soups = SoupSalad.all
  end
end
