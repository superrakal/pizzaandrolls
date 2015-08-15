class SaladsController < ApplicationController
  def index
    @salads = Salad.all
  end
end
