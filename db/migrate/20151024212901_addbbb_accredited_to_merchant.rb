class AddbbbAccreditedToMerchant < ActiveRecord::Migration
  def change
  	add_column :merchants, :bbb_accredited, :boolean
  end
end
