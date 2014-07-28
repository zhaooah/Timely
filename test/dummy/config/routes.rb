Rails.application.routes.draw do
  mount Timely::Engine => "/timely"
  root :to => redirect("/timely")
	get "/auth/google_oauth2/callback" => "timely/google_calendar#callback"

end
