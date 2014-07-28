Timely::Engine.routes.draw do

	#Index Page for Timely
	 root :to => "timely#index"
 
	#Resources
	  resources :calendars

	#Google Calendar API
		#get "/auth/google_oauth2/callback" => "google_calendar#callback"
		#get "/auth/oauth2callback" => "google_calendar#callback"
		#get "/auth/oauth2authorize" => "google_calendar#authorize"

		#match "/auth/google_oauth2/callback" => "google_calendar#callback"

 	#match '/auth/google_oauth2/callback(.:format)' => 'google_calendar#callback', :via => [:get], :as => 'google_calendar_callback'
 	match "/auth/google_oauth2/callback" => "google_calendar#callback", :via => [:get], :as => 'google_calendar_callback'
#get  'auth/:provider/callback' => 'google_calendar#ccallback'

end
