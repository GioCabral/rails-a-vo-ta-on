class CreateBillings < ActiveRecord::Migration[7.0]
  def change
    create_table :billings do |t|
      t.string :status
      t.string :title
      t.float :total
      t.string :payment_method
      t.integer :grandchild_id
      t.integer :grandparent_id
      t.string :grandchild_type
      t.string :grandparent_type

      t.timestamps
    end
  end
end
