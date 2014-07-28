class CreateTimelyCalendars < ActiveRecord::Migration
  def change
    create_table :timely_calendars do |t|
      t.string :name
      t.integer :owner_id
      t.integer :event_id
      t.text :description

      t.timestamps
    end
  end
end
