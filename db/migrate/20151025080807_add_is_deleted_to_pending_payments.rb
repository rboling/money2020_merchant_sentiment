class AddIsDeletedToPendingPayments < ActiveRecord::Migration
  def change
    add_column :pending_payments, :is_deleted, :boolean
  end
end
