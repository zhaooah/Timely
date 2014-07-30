class AddCalendarListIdtoCalendars < ActiveRecord::Migration
  def self.up
      add_column :timely_calendars, :calendar_list_id, :integer
      add_index 'timely_calendars', ['calendar_list_id'], :name => 'index_calendar_list_id' 
  end

  def self.down
      remove_column :timely_calendars, :calendar_list_id
  end
end
