Rails.application.config.middleware.use OmniAuth::Builder do
 # provider :google_oauth2, ENV["GOOGLE_CLIENT_ID"], ENV["GOOGLE_CLIENT_SECRET"]
 provider :google_oauth2, "692127230862-en444lcaad1j4hgcbp59gltflgatjjdr.apps.googleusercontent.com", "ROtj1v6j19hOTxUBhbPT91C-",  {
        :scope => 'calendar.readonly,  plus.profile.emails.read' ,
     #   :redirect_uri => 'http://timelydebug.io:3000/auth/google_oauth2/callback/'

         }
end

#config.omniauth :google_oauth2,  "995954355701-1tk58btgqpq5kv5dl9e941e3r5ec7f4h.apps.googleusercontent.com", "2Jqhghvq7DHuP4Ll8y9DySLl",{ access_type: "offline", approval_prompt: "force", scope: 'https://www.googleapis.com/auth/calendar.readonly', name: 'google'}
