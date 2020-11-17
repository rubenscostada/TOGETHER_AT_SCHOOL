class CreateUserKids < ActiveRecord::Migration[6.0]
  def change
    create_table :user_kids do |t|
      t.references :user, null: false, foreign_key: true
      t.references :kid, null: false, foreign_key: true

      t.timestamps
    end
  end
end
