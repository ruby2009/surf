class AuthorsController < ApplicationController

  before_action :cheese_bar

  before_action :find_author, only: [:show, :edit, :update]

  def index
    @authors = Author.all
  end

  def show
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      AuthorMailer.signup(@author).deliver
      session[:author_id] = @author.id
      redirect_to @author
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @author.update(author_params)
      redirect_to @author
    else
      render :edit
    end
  end

  private

  def author_params
    params.require(:author).permit(:name, :bio, :avatar, :password)
  end

  def cheese_bar
    @cheeses = Cheese.all
  end

  def find_author
    @author = Author.find(params[:id])
  end

  def require_self
    unless @author == current_author
      flash[:danger] = "You can only do this to your own profile."
      redirect_to :root
    end
  end

end
