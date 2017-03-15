class SessionsController < ApplicationController

  def new
    @cheeses = Cheese.all
  end

  def create
	  @author = Author.find_by(name: params[:session][:author])
	  if @author && @author.authenticate(params[:session][:password])
		  session[:author_id] = @author.id
			flash[:success] = "Welcome, #{@author.name}."
	    redirect_to :root
	  else
		  flash[:danger] = "Incorrect credentials. Please try again."
		  redirect_to :login
	  end
  end

  def destroy
	  session[:author_id] = nil
	  redirect_to :root
  end


end
