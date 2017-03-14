class AuthorsController < ApplicationController

  before_action :cheese_bar

  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to @author
    else
      render :new
    end
  end

  private

  def author_params
    params.require(:author).permit(:name, :bio, :avatar)
  end

  def cheese_bar
    @cheeses = Cheese.all
  end

end
