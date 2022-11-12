class CreateChatrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :chatrooms do |t|
      t.string :close
      t.integer :grandchild_id
      t.integer :grandparent_id
      t.string :grandchild_type
      t.string :grandparent_type
      t.references :issue, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.references :application, null: false, foreign_key: true

      t.timestamps
    end
  end
end
