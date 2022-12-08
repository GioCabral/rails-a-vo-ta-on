class AddGrandChildAndCloseRefToChatrooms < ActiveRecord::Migration[7.0]
  def change
    add_reference :chatrooms, :grandchild_id, default: 0
    add_reference :chatrooms, :close, default: false
  end
end
