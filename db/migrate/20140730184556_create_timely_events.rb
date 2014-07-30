class CreateTimelyEvents < ActiveRecord::Migration
  def change
    create_table :timely_events do |t|
      t.string :summary
      t.string :color
      t.datetime :start
      t.datetime :end
      t.string :color
      t.integer :calendar_id
      t.boolean :all_day
      t.text :description

      t.timestamps
    end
  end
end
