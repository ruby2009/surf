def share(cheese)
  @cheese = cheese
  mail(to: 'bgcall@indiana.edu', subject: "This was shared with you!")
end
