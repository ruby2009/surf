class AuthorsController < ApplicationController
  def index
  end

  def show
    @user = Author.find(params[:id])
  end
end
