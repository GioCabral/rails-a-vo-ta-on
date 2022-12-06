class CreateChatrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :chatrooms do |t|
      t.boolean :close, default: false
      t.integer :grandchild_id, default: 0
      t.integer :grandparent_id
      t.string :grandchild_type
      t.string :grandparent_type
      t.references :issue, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
