class AddFeedzaiUsernameToMerchant < ActiveRecord::Migration
  def change
    add_column :merchants, :feedzai_username, :string
  end
end
