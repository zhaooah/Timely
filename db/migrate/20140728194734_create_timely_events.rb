class CreateTimelyEvents < ActiveRecord::Migration
  def change
    create_table :timely_events do |t|
      t.string :title
      t.boolean :allDay
      t.datetime :start
      t.datetime :end
      t.string :className
      t.boolean :startEditable
      t.boolean :durationEditable
      t.text :description

      t.timestamps
    end
  end
end
