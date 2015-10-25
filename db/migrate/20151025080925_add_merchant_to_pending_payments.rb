class AddMerchantToPendingPayments < ActiveRecord::Migration
  def change
    add_reference :pending_payments, :merchant, index: true, foreign_key: true
  end
end
