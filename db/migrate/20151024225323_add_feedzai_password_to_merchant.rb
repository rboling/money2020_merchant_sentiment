class AddFeedzaiPasswordToMerchant < ActiveRecord::Migration
  def change
    add_column :merchants, :feedzai_password, :string
  end
end
