class AddEventsAssociationToCalendar < ActiveRecord::Migration
  def self.up
      add_column :timely_events, :calendar_id, :integer
      add_index 'timely_events', ['calendar_id'], :name => 'index_calendar_id' 
  end

  def self.down
      remove_column :timely_events, :calendar_id
  end
end
