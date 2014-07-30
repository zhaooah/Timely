require_dependency "timely/application_controller"

module Timely
  class TimelyController < ApplicationController

  	def index

  		#Create a calendar_list
  		@calendarlist=Timely::CalendarList.new
  		@default_calendar=@calendarlist.calendars.new
  		@default_events=@default_calendar.events.new
  	end


  end
end
