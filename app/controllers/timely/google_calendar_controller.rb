require_dependency "timely/application_controller"

require "google/api_client"

module Timely
  class GoogleCalendarController < ApplicationController

def api_client; settings.api_client; end


#	  before_filter :doBefore
#  skip_before_filter :ensure_signed_in

  def doBefore






    @client = Google::APIClient.new
    @client.authorization.client_id = '995954355701-1tk58btgqpq5kv5dl9e941e3r5ec7f4h.apps.googleusercontent.com'
    @client.authorization.client_secret = '2Jqhghvq7DHuP4Ll8y9DySLl'
    @client.authorization.scope = 'https://www.googleapis.com/auth/calendar.readonly'
    #@client.authorization.redirect_uri = 'http://localhost:3000/oauth/callback'
    @client.authorization.code = params[:code] if params[:code]
    if @client.authorization.refresh_token && @client.authorization.expired?
      @client.authorization.fetch_access_token!
    end
	@gcalendar = @client.discovered_api('calendar', 'v3')

    unless @client.authorization.access_token || request.path_info =~ /^\/oauth2/
      redirect_to(auth_oauth2authorize_path)
    end
  end


  	def user_credentials
  # Build a per-request oauth credential based on token stored in session
  # which allows us to use a shared API client.
  @authorization ||= (
    auth = api_client.authorization.dup
    auth.redirect_uri = to('/oauth2callback')
    auth.update_token!(session)
    auth
  )
end



  def authorize
    redirect @client.authorization.authorization_uri.to_s, 303
  end
  	def callback
	  #  @auth = request.env["omniauth.auth"]
  		redirect_to root_url, alert: "successful!"	
	end

	def failure
  		redirect_to root_url, alert: "Authentication failed!!"	
	end

def index


      # Fetch list of events on the user's default calandar
  result = @client.execute(:api_method => @gcalendar.events.list,
                              :parameters => {'calendarId' => 'primary'},
                              :authorization => user_credentials)
  [result.status, {'Content-Type' => 'application/json'}, result.data.to_json]
  end


end

end

