class SnacksMexicaController < ApplicationController
  def index
    @snaks = SnacksMexica.all
  end
end
