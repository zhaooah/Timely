module Timely
  class Calendar < ActiveRecord::Base
  	  has_many :events, dependent: :destroy
  	  belongs_to :calendar_list
  end
end
 