class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.boolean :status
      t.references :small_event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
