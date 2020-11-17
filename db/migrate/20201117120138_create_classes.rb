class CreateClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :classes do |t|
      t.string :name
      t.integer :year

      t.timestamps
    end
  end
end
