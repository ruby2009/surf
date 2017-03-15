class AuthorMailer < ApplicationMailer

  def signup(author)
    @author = author
    mail(to: 'bgcall@indiana.edu', subject: "Welcome to CheesUs!")
  end

end
