class HomeController < ApplicationController
  def index
     @cheeses = Cheese.all
     @cheese = Cheese.order(created_at: :desc).first
  end
end
