class CreateTimelyCalendarLists < ActiveRecord::Migration
  def change
    create_table :timely_calendar_lists do |t|
      t.string :title

      t.timestamps
    end
  end
end
