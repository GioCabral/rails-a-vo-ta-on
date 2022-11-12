class CreatePaymentMethods < ActiveRecord::Migration[7.0]
  def change
    create_table :payment_methods do |t|
      t.integer :crd_number
      t.integer :ccv
      t.string :expiration_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
