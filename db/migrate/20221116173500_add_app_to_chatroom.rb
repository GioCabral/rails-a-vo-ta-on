class AddAppToChatroom < ActiveRecord::Migration[7.0]
  def change
    add_reference :chatrooms, :app, null: false, foreign_key: true
  end
end
