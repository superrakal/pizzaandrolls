class SoupController < ApplicationController
  def index
    @soups = Soup.all
  end
end
