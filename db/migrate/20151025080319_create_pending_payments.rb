class CreatePendingPayments < ActiveRecord::Migration
  def change
    create_table :pending_payments do |t|
      t.integer :amount
      t.string :currency
      t.string :country
      t.string :user_id
      t.time :time
      t.timestamps null: false
    end
  end
end
