#require 'rubygems'
#require 'google/api_client'
#require 'google/api_client/client_secrets'
#require 'google/api_client/auth/file_storage'


#def logger; settings.logger end

#def api_client; settings.api_client; end

#def calendar_api; settings.calendar; end

#@client = Google::APIClient.new


#@client.authorization.client_id = "995954355701-1tk58btgqpq5kv5dl9e941e3r5ec7f4h.apps.googleusercontent.com"
#@client.authorization.client_secret = "2Jqhghvq7DHuP4Ll8y9DySLl"
#@client.authorization.scope = "https://www.googleapis.com/auth/calendar.readonly"

#@gcalendar = @client.discovered_api('calendar', 'v3')

#unless @client.authorization.access_token || request.path_info =~ /^\/oauth2/
 # redirect_to(auth_oauth2authorize_path)
#end


