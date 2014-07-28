Rails.application.routes.draw do
  mount Timely::Engine => "/timely"
  root :to => redirect("/timely")

end
