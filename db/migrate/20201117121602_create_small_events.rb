class CreateSmallEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :small_events do |t|
      t.references :kid, null: false, foreign_key: true
      t.date :date
      t.text :observation
      t.time :start_nap_time_morning
      t.time :end_nap_time_morning
      t.text :lunch_description
      t.time :start_nap_time_afternoon
      t.time :end_nap_time_afternoon
      t.timestamps
    end
  end
end
