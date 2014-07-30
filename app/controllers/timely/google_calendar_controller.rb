require_dependency "timely/application_controller"

require "google/api_client"

module Timely
  class GoogleCalendarController < ApplicationController

  	def callback   
    @auth = request.env["omniauth.auth"]
    #Use the token from the data to request a list of calendars
    @@token = @auth["credentials"]["token"]
    @client = Google::APIClient.new
    @client.authorization.access_token = @@token
    @service = @client.discovered_api('calendar', 'v3')

    getCalendarList
  


	 end


   def getCalendarList
    @google_calendar_list = @client.execute(
      :api_method => @service.calendar_list.list,
      :parameters => {},
      :headers => {'Content-Type' => 'application/json'})
   end

   def getCalendars
    @client = Google::APIClient.new
    @client.authorization.access_token = @@token
    @service = @client.discovered_api('calendar', 'v3')

    @google_calendar=params[:calendar_ids]
    @google_calendar_events=[]

    @google_calendar.each do |calendar_id|
        
        calendar_events_list=@client.execute(:api_method => @service.events.list,
                       :parameters => {'calendarId' => calendar_id})


                JSON.parse(calendar_events_list.body)["items"].each do |calendar_events|

 #                 starttime=DateTime.iso8601(calendar_events['start'].to_s)
#                  endtime=DateTime.iso8601(calendar_events['end'].to_s)

                  #   if starttime.is_a?(DateTime) and endtime.is_a?(DateTime) then
                          @event = Event.new(:title => calendar_events["summary"].to_s , :start => calendar_events["start"],:end => calendar_events["end"])
                          @event.save

                   #    end

                              @google_calendar_events.push(calendar_events) 
                end        
        end


   end

   private
   @@token=0




end

end

