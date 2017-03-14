class CheesesController < ApplicationController

  before_action :cheeses_load, :find_cheese

  skip_before_action :find_cheese, only: [:new, :index, :create]

  def index
  end

  def show
  end

  def new
    @cheese = Cheese.new
  end

  def create
    @cheese = Cheese.new(cheese_params)
    if @cheese.save
      redirect_to @cheese
    else
      render :new
    end
  end

  def destroy
    @cheese.destroy
    redirect_to :root
  end

  def edit
  end

  def update
    if @cheese.update(cheese_params)
      redirect_to @cheese
    else
      render :edit
    end
  end


  private

  def cheese_params
    params.require(:cheese).permit(:name, :description, :picture, :author_id)
  end

  def cheeses_load
    @cheeses = Cheese.all
  end

  def find_cheese
    @cheese = Cheese.find(params[:id])
  end

end
