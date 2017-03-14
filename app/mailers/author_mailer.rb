class AuthorMailer < ApplicationMailer

  def signup(user)
    @author = author
    mail(to: 'bgcall@indiana.edu', subject: "Welcome to CheesUs!")
  end

end
