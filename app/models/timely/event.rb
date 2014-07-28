module Timely
  class Event < ActiveRecord::Base
  	belongs_to: calendar
  end
end
