class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :start_date
      t.string :end_date
      t.references :classe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
