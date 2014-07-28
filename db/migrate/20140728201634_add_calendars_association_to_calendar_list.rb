class AddCalendarsAssociationToCalendarList < ActiveRecord::Migration
  def self.up
      add_column :timely_calendars, :calendarlist_id, :integer
      add_index 'timely_calendars', ['calendarlist_id'], :name => 'index_calendarlist_id' 
  end

  def self.down
      remove_column :timely_calendars, :calendarlist_id
  end
end
