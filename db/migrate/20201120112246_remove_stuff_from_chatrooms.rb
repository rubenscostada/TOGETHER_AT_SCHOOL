class RemoveStuffFromChatrooms < ActiveRecord::Migration[6.0]
  def change
    remove_column :chatrooms, :message, :text
    remove_reference :chatrooms, :user, null: false, foreign_key: true
  end
end
