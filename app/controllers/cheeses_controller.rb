class CheesesController < ApplicationController
  def show
    @cheeses = Cheese.all
    @cheese = Cheese.find(params[:id])
  end
end
