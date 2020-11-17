class CreateClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :classes do |t|
      t.string :name
      t.integer :year
      t.references :user, null: false, foreign_key: true


      t.timestamps
    end
  end
end
