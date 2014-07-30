module Timely
  class CalendarList < ActiveRecord::Base

	has_many :calendars, dependent: :destroy
  end
end
