Rails.application.config.middleware.use OmniAuth::Builder do
 # provider :google_oauth2, ENV["GOOGLE_CLIENT_ID"], ENV["GOOGLE_CLIENT_SECRET"]
 provider :google_oauth2, "995954355701-1tk58btgqpq5kv5dl9e941e3r5ec7f4h.apps.googleusercontent.com", "2Jqhghvq7DHuP4Ll8y9DySLl",  {
        :scope => 'calendar.readonly,  plus.profile.emails.read'  }
end

#config.omniauth :google_oauth2,  "995954355701-1tk58btgqpq5kv5dl9e941e3r5ec7f4h.apps.googleusercontent.com", "2Jqhghvq7DHuP4Ll8y9DySLl",{ access_type: "offline", approval_prompt: "force", scope: 'https://www.googleapis.com/auth/calendar.readonly', name: 'google'}
