class CreateSmallEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :small_events do |t|
      t.references :kid, null: false, foreign_key: true
      t.string :start_date
      t.string :end_date
      t.string :title
      t.text :description
      t.references :attendance, null: false, foreign_key: true

      t.timestamps
    end
  end
end
