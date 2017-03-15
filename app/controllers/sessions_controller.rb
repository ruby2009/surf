class SessionsController < ApplicationController

  def new
  end

  def create
    @cheeses = Cheese.all
	  @author = Author.find_by(name: params[:session][:author])
	  if @author && @author.authenticate(params[:session][:password])
		  session[:user_id] = @user.id
			flash[:success] = "Welcome, #{@user.name}."
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
